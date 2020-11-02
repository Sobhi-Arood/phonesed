import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_bloc.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/presentation/posts/post_form/misc/post_img_presentation.dart';
import 'package:phonesed/presentation/posts/post_form/widgets/add_img_btn.dart';
import 'package:phonesed/presentation/posts/post_form/widgets/age_dropown.dart';
import 'package:phonesed/presentation/posts/post_form/widgets/area_dropdown.dart';
import 'package:phonesed/presentation/posts/post_form/widgets/brand_dropdown.dart';
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
import 'package:provider/provider.dart';

class PostFormPageScaffold extends StatelessWidget {
  const PostFormPageScaffold({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: BlocBuilder<PostFormBloc, PostFormState>(
          buildWhen: (p, c) => p.isEditing != c.isEditing,
          builder: (context, state) {
            return Text(
              state.isEditing ? 'Edit a post' : 'Create a post',
              style: const TextStyle(color: kPrimaryDarkColor),
            );
          },
        ),
      ),
      body: BlocBuilder<PostFormBloc, PostFormState>(
        buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
        builder: (context, state) {
          return ChangeNotifierProvider(
            create: (_) => PostImage(),
            child: Form(
              autovalidate: state.showErrorMessages,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                // children: [
                //   const BrandDropdown(),
                //   const SizedBox(height: 28),
                //   const DeviceDropdown(),
                //   const SizedBox(height: 28),
                //   const AgeDropdown(),
                //   const SizedBox(height: 28),
                //   const ConditionDropdown(),
                //   const SizedBox(height: 28),
                //   const TitleTextForm(),
                //   const SizedBox(height: 28),
                //   const PriceTextForm(),
                //   const SizedBox(height: 28),
                //   const DescriptionTextForm(),
                //   const SizedBox(height: 28),
                //   const AddImageButton(),
                //   Container(child: const ImagesList()),
                // ],
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 20),
                  child: Column(
                    children: [
                      const BrandDropdown(),
                      const SizedBox(height: 28),
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
                      const AddImageButton(),
                      const ImagesList(),
                      const SizedBox(height: 16),
                      const CityDropdown(),
                      const SizedBox(height: 28),
                      const AreaDropdown(),
                      const SizedBox(height: 28),
                      Wrap(
                        children: const [
                          ExchangableCheckbox(),
                          NegotiableCheckbox(),
                          HeadphonesCheckbox(),
                          ChargerCheckbox(),
                        ],
                      ),
                      const SizedBox(height: 28),
                      const MoreAccessoriesTextForm(),
                      const SizedBox(height: 28),
                      Container(
                        color: kPrimaryLightColor,
                        height: 1,
                      ),
                      const SizedBox(height: 28),
                      Container(
                        width: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
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
                                'Save',
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
      ),
    );
  }
}
