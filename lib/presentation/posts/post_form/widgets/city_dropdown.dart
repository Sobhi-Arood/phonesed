import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phonesed/application/posts/post_form/post_form_areas/post_form_areas_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_cities/post_form_cities_bloc.dart';

import '../../../../constants.dart';

class CityDropdown extends HookWidget {
  const CityDropdown({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final brandValue = useState('Apple');
    final cityValue = useState('');
    return BlocConsumer<PostFormBloc, PostFormState>(
      listener: (context, state) {
        cityValue.value = state.post.city.value.fold((l) => '', (r) => r);
      },
      buildWhen: (p, c) => p.post.city != c.post.city,
      builder: (context, formState) {
        // cityValue.value = formState.post.city.value.fold((l) => '', (r) => r);
        // print(state.cities);
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
                    initial: (_) => Container(),
                    loadInProgress: (_) => Container(
                      child: const Text('Loading...'),
                    ),
                    loadCitiesSuccess: (s) {
                      cityValue.value = formState.post.city.value
                          .fold((l) => s.data[0], (r) => r);
                      context
                          .bloc<PostFormBloc>()
                          .add(PostFormEvent.cityChanged(cityValue.value));
                      // context.bloc<PostFormAreasBloc>().add(
                      //       PostFormAreasEvent.getAreasStarted(
                      //           cityValue.value.isEmpty
                      //               ? s.data[0]
                      //               : cityValue.value),
                      //     );
                      context.bloc<PostFormAreasBloc>().add(
                            PostFormAreasEvent.getAreasStarted(cityValue.value),
                          );
                    },
                    loadCitiesFailure: (_) => Container(
                      child: const Text('Error'),
                    ),
                  );
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
                      // cityValue.value = data.data[0];
                      // print(data.data);
                      return DropdownButtonHideUnderline(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButton<String>(
                            value: formState.post.city.getOrCrash(),
                            // value: data.data[0],
                            // value: cityValue.value.isEmpty
                            //     ? data.data[0]
                            //     : cityValue.value,
                            // value: cityValue.value,
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
                                  .bloc<PostFormBloc>()
                                  .add(PostFormEvent.cityChanged(v));
                              context
                                  .bloc<PostFormAreasBloc>()
                                  .add(PostFormAreasEvent.getAreasStarted(v));
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

class CityValueWidget extends StatelessWidget {
  const CityValueWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostFormBloc, PostFormState>(
      builder: (context, state) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'City',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: kSecondaryLightColor,
            ),
          ),
          const SizedBox(height: 6),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              state.post.city.value.fold((l) => 'Error', (r) => r),
              style: const TextStyle(
                color: kPrimaryDarkColor,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
