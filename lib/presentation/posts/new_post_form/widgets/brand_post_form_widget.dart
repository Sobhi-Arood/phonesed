import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phonesed/application/core/form_navigation/form_navigation_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_brands/post_form_brands_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_devices/post_form_devices_bloc.dart';
import 'package:phonesed/presentation/routes/router.gr.dart';

import '../../../../constants.dart';

class BrandPostFormWidget extends StatelessWidget {
  const BrandPostFormWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostFormBrandsBloc, PostFormBrandsState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => Center(
                  child: Container(
                    // width: 100,
                    // height: 100,
                    child: CircularProgressIndicator(),
                  ),
                ),
            loadBrandsSuccess: (data) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    padding: const EdgeInsets.all(20.0),
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Add your device to sell',
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                        const Text(
                          "Start by choosing the device's brand",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 50.0),
                      child: GridView.builder(
                        padding: const EdgeInsets.all(16.0),
                        itemCount: data.data.size,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          final brand = data.data[index];
                          // print(brand.brandImgUrl);
                          return GestureDetector(
                            onTap: () {
                              context.bloc<PostFormBloc>().add(
                                  PostFormEvent.brandChanged(brand.brandName));

                              context.bloc<PostFormDevicesBloc>().add(
                                  PostFormDevicesEvent.getDevicesStarted(
                                      brand.brandName));

                              context.bloc<FormNavigationBloc>().add(
                                  const FormNavigationEvent.pageChanged(1));
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              color: Colors.white,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  // Image.network(brand.brandImgUrl),
                                  SvgPicture.network(
                                    brand.brandImgUrl,
                                    width: 45,
                                    height: 45,
                                  ),
                                  Text(
                                    brand.brandName,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: kPrimaryDarkColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              );
            },
            loadBrandsFailure: (_) => Container());
      },
    );
  }
}
