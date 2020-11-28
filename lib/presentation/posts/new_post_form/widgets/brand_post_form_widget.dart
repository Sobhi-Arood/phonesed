import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
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
            loadInProgress: (_) => const Center(
                  child: SpinKitFadingFour(
                    color: kPrimaryColor,
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
                        Text(
                          'Add your device to sell',
                          style: Theme.of(context).textTheme.headline4.copyWith(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w700),
                          // style: TextStyle(
                          //     color: kPrimaryColor,
                          //     fontSize: 24,
                          //     fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Start by choosing the device's brand",
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              .copyWith(color: Colors.grey),
                          // style: TextStyle(
                          //     color: Colors.grey,
                          //     fontSize: 18,
                          //     fontWeight: FontWeight.w500),
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
                              context
                                  .read<PostFormBloc>()
                                  .add(PostFormEvent.brandChanged(brand.brand));

                              context.read<PostFormDevicesBloc>().add(
                                  PostFormDevicesEvent.getDevicesStarted(
                                      index));

                              context.read<FormNavigationBloc>().add(
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
                                  if (brand.logo.isNotEmpty) ...[
                                    if (brand.brand == 'Motorola') ...[
                                      Image.asset(
                                        brand.logo,
                                        width: 65,
                                        height: 65,
                                      ),
                                    ] else if (brand.brand == 'Oppo') ...[
                                      SvgPicture.asset(
                                        brand.logo,
                                        width: 35,
                                        height: 35,
                                        color: kPrimaryDarkColor,
                                      ),
                                    ] else ...[
                                      SvgPicture.asset(
                                        brand.logo,
                                        width: 65,
                                        height: 65,
                                        color: kPrimaryDarkColor,
                                      ),
                                    ],
                                  ],
                                  Text(
                                    brand.brand,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: kPrimaryDarkColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
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
