import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phonesed/application/core/posts_filter/posts_form_filter/posts_form_filter_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_brands/post_form_brands_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_devices/post_form_devices_bloc.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/domain/posts/value_objects.dart';
import 'package:kt_dart/collection.dart';

class FilterBrandDropdown extends HookWidget {
  const FilterBrandDropdown({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final brandValue = useState('');
    return BlocConsumer<PostsFormFilterBloc, PostsFormFilterState>(
      listener: (context, state) {
        // brandValue.value = state.brand;
      },
      builder: (context, formState) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Brand',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: kSecondaryLightColor),
            ),
            const SizedBox(height: 6),
            Container(
              decoration: const BoxDecoration(color: kPrimaryLightColor),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: BlocConsumer<PostFormBrandsBloc, PostFormBrandsState>(
                listener: (context, state) {
                  state.map(
                      initial: (_) => {},
                      loadInProgress: (_) => {},
                      loadBrandsSuccess: (s) {
                        // if (formState.post.brand.getOrCrash().isEmpty) {
                        // brandValue.value = s.data[0];
                        context.bloc<PostsFormFilterBloc>().add(
                            PostsFormFilterEvent.brandChanged(s.data[0].brand));
                        // context
                        //     .bloc<PostFormBloc>()
                        //     .add(PostFormEvent.brandChanged(brandValue.value));
                        // context.bloc<PostFormDevicesBloc>().add(
                        //       PostFormDevicesEvent.getDevicesStarted(s.data[0]),
                        //     );
                        // }
                      },
                      loadBrandsFailure: (_) => {});
                },
                builder: (context, dataState) {
                  return dataState.map(
                      initial: (_) => Container(),
                      loadInProgress: (_) => Container(
                            child: const Text('Loading ...'),
                          ),
                      loadBrandsSuccess: (data) {
                        return DropdownButtonHideUnderline(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButton<String>(
                              // value: brandValue.value,
                              value: formState.brand,
                              elevation: 0,
                              isExpanded: true,
                              style: const TextStyle(
                                color: kPrimaryDarkColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                              onChanged: (v) {
                                // brandValue.value = v;
                                context
                                    .bloc<PostsFormFilterBloc>()
                                    .add(PostsFormFilterEvent.brandChanged(v));
                                // context.bloc<PostFormDevicesBloc>().add(
                                //     PostFormDevicesEvent.getDevicesStarted(v));
                              },
                              items: data.data
                                  .asList()
                                  .map<DropdownMenuItem<String>>((value) {
                                return DropdownMenuItem<String>(
                                  value: value.brand,
                                  child: Text(value.brand),
                                );
                              }).toList(),
                            ),
                          ),
                        );
                      },
                      loadBrandsFailure: (_) =>
                          Container(child: const Text('Error')));
                },
              ),
            )
          ],
        );
      },
    );
  }
}
