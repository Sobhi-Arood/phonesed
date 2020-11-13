import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/core/form_navigation/form_navigation_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_bloc.dart';
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
import 'package:phonesed/presentation/posts/post_form/widgets/moreAcc_textform.dart';
import 'package:phonesed/presentation/posts/post_form/widgets/price_textform.dart';
import 'package:phonesed/presentation/posts/post_form/widgets/title_textform.dart';

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
                        const DeviceDropdown(),
                        const SizedBox(height: 28),
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

                              // print(state.post.images.getOrCrash());
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
