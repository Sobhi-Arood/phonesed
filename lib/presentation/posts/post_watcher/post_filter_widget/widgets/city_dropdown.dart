import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phonesed/application/core/posts_filter/posts_form_filter/posts_form_filter_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_areas/post_form_areas_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_cities/post_form_cities_bloc.dart';

import '../../../../../constants.dart';

class FilterCityDropdown extends HookWidget {
  const FilterCityDropdown({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final brandValue = useState('Apple');
    // final cityValue = useState('');
    return BlocConsumer<PostsFormFilterBloc, PostsFormFilterState>(
      listenWhen: (p, c) => p.city != c.city,
      listener: (context, state) {
        // cityValue.value = state.city;
      },
      buildWhen: (p, c) => p.city != c.city,
      builder: (context, formState) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'City',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: kSecondaryLightColor),
            ),
            const SizedBox(height: 6),
            Container(
              decoration: const BoxDecoration(color: kPrimaryLightColor),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: BlocConsumer<PostFormCitiesBloc, PostFormCitiesState>(
                listener: (context, state) {
                  state.map(
                      initial: (_) => {},
                      loadInProgress: (_) => {},
                      loadCitiesSuccess: (s) {
                        // if (formState.post.city.getOrCrash().isEmpty) {
                        // cityValue.value = s.data[0];
                        context
                            .bloc<PostsFormFilterBloc>()
                            .add(PostsFormFilterEvent.cityChanged(s.data[0]));
                        // context
                        //     .bloc<PostFormAreasBloc>()
                        //     .add(PostFormAreasEvent.getAreasStarted(s.data[0]));
                        // }
                      },
                      loadCitiesFailure: (_) => {});
                  // cityValue.value = state.map(
                  //     initial: (_) => '',
                  //     loadInProgress: (_) => '',
                  //     loadCitiesSuccess: (v) => v.data[0],
                  //     loadCitiesFailure: (_) => '');
                },
                builder: (context, dataState) {
                  return dataState.map(
                    initial: (_) => Container(),
                    loadInProgress: (_) => const Text('Loading...'),
                    loadCitiesSuccess: (data) {
                      print(data.data);
                      return DropdownButtonHideUnderline(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButton<String>(
                            // value: state.post.city.getOrCrash(),
                            // value: data.data[0],
                            // value: cityValue.value,
                            value: formState.city,
                            elevation: 0,
                            isExpanded: true,
                            style: const TextStyle(
                              color: kPrimaryDarkColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                            onChanged: (v) {
                              // print(v);
                              // cityValue.value = v;
                              context
                                  .bloc<PostsFormFilterBloc>()
                                  .add(PostsFormFilterEvent.cityChanged(v));
                              // context
                              //     .bloc<PostFormBloc>()
                              //     .add(PostFormEvent.cityChanged(v));
                              // context
                              //     .bloc<PostFormAreasBloc>()
                              //     .add(PostFormAreasEvent.getAreasStarted(v));
                            },
                            items: data.data
                                .asList()
                                .map<DropdownMenuItem<String>>((value) {
                              // print(value);
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                    loadCitiesFailure: (_) => const Text('Error'),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
