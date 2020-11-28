import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phonesed/application/posts/post_form/post_form_areas/post_form_areas_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_load_data/post_form_load_data_bloc.dart';

import '../../../../constants.dart';

class AreaDropdown extends HookWidget {
  const AreaDropdown({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final areaValue = useState('');
    return BlocConsumer<PostFormBloc, PostFormState>(
      listener: (context, state) {
        // print(state.post.area);
        // areaValue.value = state.post.area.value.fold((l) => '', (r) => r);
        // context.read<PostFormAreasBloc>().add(
        //                       PostFormAreasEvent.getAreasStarted(state.post.area.value.fold((l) => '', (r) => r)));
      },
      // buildWhen: (p, c) => p.post.area != c.post.area,
      builder: (context, formState) {
        // print(state.post.area.getOrCrash());
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Area',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: kSecondaryLightColor),
            ),
            const SizedBox(height: 6),
            Container(
              decoration: const BoxDecoration(color: kPrimaryLightColor),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: BlocConsumer<PostFormAreasBloc, PostFormAreasState>(
                listener: (context, state) {
                  areaValue.value = state.map(
                    initial: (_) => '',
                    loadInProgress: (_) => '',
                    loadAreasSuccess: (s) => s.data[0],
                    loadAreasFailure: (_) => 'error',
                  );
                  context
                      .read<PostFormBloc>()
                      .add(PostFormEvent.areaChanged(areaValue.value));
                },
                builder: (context, dataState) {
                  return dataState.maybeMap(
                      initial: (_) => Container(),
                      loadInProgress: (_) => const Text('Loading...'),
                      loadAreasSuccess: (data) {
                        // areaValue.value = data.data[0];
                        return DropdownButtonHideUnderline(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButton<String>(
                            // value: formState.post.area.getOrCrash(),
                            value: areaValue.value.isEmpty
                                ? data.data[0]
                                : areaValue.value,
                            // value: data.data[0],
                            // value: areaValue.value,
                            elevation: 0,
                            isExpanded: true,
                            style: const TextStyle(
                              color: kPrimaryDarkColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                            onChanged: (v) {
                              FocusScope.of(context).unfocus();
                              areaValue.value = v;
                              context
                                  .read<PostFormBloc>()
                                  .add(PostFormEvent.areaChanged(v));
                            },
                            items: data.data
                                .asList()
                                .map<DropdownMenuItem<String>>((value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ));
                      },
                      loadAreasFailure: (_) => const Text('Error'),
                      orElse: () => Container());
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class AreaValueWidget extends StatelessWidget {
  const AreaValueWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostFormBloc, PostFormState>(
      builder: (context, state) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Area',
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
              state.post.area.value.fold((l) => 'Error', (r) => r),
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
