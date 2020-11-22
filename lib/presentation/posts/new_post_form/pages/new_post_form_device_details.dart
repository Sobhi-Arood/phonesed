import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/core/form_navigation/form_navigation_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_bloc.dart';
import 'package:phonesed/presentation/posts/new_post_form/widgets/dropdowns/models_dropdown.dart';
import 'package:phonesed/presentation/posts/post_form/misc/post_img_presentation.dart';
import 'package:phonesed/presentation/posts/post_form/widgets/age_dropown.dart';
import 'package:phonesed/presentation/posts/post_form/widgets/area_dropdown.dart';
import 'package:phonesed/presentation/posts/post_form/widgets/checkboxs/charger_checkbox.dart';
import 'package:phonesed/presentation/posts/post_form/widgets/checkboxs/exchange_checkbox.dart';
import 'package:phonesed/presentation/posts/post_form/widgets/checkboxs/headphones_checkbox.dart';
import 'package:phonesed/presentation/posts/post_form/widgets/checkboxs/negiotiable_checkbox.dart';
import 'package:phonesed/presentation/posts/post_form/widgets/city_dropdown.dart';
import 'package:phonesed/presentation/posts/post_form/widgets/condition_dropdown.dart';
import 'package:phonesed/presentation/posts/post_form/widgets/description_textform.dart';
import 'package:phonesed/presentation/posts/post_form/widgets/device_dropdown.dart';
import 'package:phonesed/presentation/posts/post_form/widgets/img_list_widget.dart';
import 'package:phonesed/presentation/posts/post_form/widgets/moreAcc_textform.dart';
import 'package:phonesed/presentation/posts/post_form/widgets/price_textform.dart';
import 'package:phonesed/presentation/posts/post_form/widgets/title_textform.dart';
import 'package:phonesed/presentation/posts/post_form/misc/build_context_x.dart';
import 'package:provider/provider.dart';

import '../../../../constants.dart';

class DeviceFormDetailsWidget extends StatelessWidget {
  const DeviceFormDetailsWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: BlocBuilder<PostFormBloc, PostFormState>(
          buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
          builder: (context, state) {
            return Form(
              autovalidate: state.showErrorMessages,
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Brand',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: kSecondaryLightColor,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              child: Text(
                                state.post.brand.getOrCrash(),
                                style: const TextStyle(
                                  color: kPrimaryDarkColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                                // maxLength: PostTitle.maxLength,
                                // minLines: 1,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 28),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Model',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: kSecondaryLightColor,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              child: Text(
                                state.post.device.getOrCrash(),
                                style: const TextStyle(
                                  color: kPrimaryDarkColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                                // maxLength: PostTitle.maxLength,
                                // minLines: 1,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 28),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Images',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: kSecondaryLightColor,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Consumer<PostImage>(
                              builder: (context, postImages, index) {
                                return Container(
                                  height: 200,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8),
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount: postImages.value.size,
                                    itemBuilder: (context, index) {
                                      return ShowImageTile(
                                        index: index,
                                        key: ValueKey(
                                            context.postImages[index].path),
                                      );
                                    },
                                  ),
                                );
                              },
                            )
                          ],
                        ),
                        const SizedBox(height: 28),
                        const Divider(),
                        // const DeviceDropdown(),
                        // ModelsDropdown(modelsList: state.post.device.getOrCrash()),
                        const SizedBox(height: 16),
                        const AgeDropdown(),
                        const SizedBox(height: 28),
                        const ConditionDropdown(),
                        const SizedBox(height: 28),
                        const TitleTextForm(),
                        const SizedBox(height: 28),
                        const PriceTextForm(),
                        const SizedBox(height: 28),
                        const DescriptionTextForm(),
                        const SizedBox(height: 28),
                        Wrap(
                          spacing: 14,
                          children: const [
                            ExchangableCheckbox(),
                            NegotiableCheckbox(),
                            HeadphonesCheckbox(),
                            ChargerCheckbox(),
                          ],
                        ),
                        const SizedBox(height: 28),
                        const MoreAccessoriesTextForm(),
                        const SizedBox(height: 68),
                        const Text(
                          'Location',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: kSecondaryLightColor),
                        ),
                        const Divider(),
                        const SizedBox(height: 16),
                        const CityDropdown(),
                        const SizedBox(height: 28),
                        const AreaDropdown(),
                        const SizedBox(height: 68),
                        Container(
                          width: double.infinity,
                          child: RaisedButton(
                            onPressed: () {
                              //   print(state.post);
                              //   state.saveFailureOrSuccessOption.fold(
                              //       () => null,
                              //       (a) => a.fold((l) {
                              //             print(l.toString());
                              //           }, (r) {
                              //             context.bloc<FormNavigationBloc>().add(
                              //                 const FormNavigationEvent
                              //                     .pageChanged(2));
                              //           }));
                              // },

                              // print(state.post);
                              context
                                  .bloc<PostFormBloc>()
                                  .add(const PostFormEvent.saved());
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 0,
                            highlightElevation: 0,
                            color: kPrimaryColor,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 1.0),
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Text(
                                  'Submit',
                                  style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
