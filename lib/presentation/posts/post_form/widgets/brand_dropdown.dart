import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_bloc.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/domain/posts/value_objects.dart';

class BrandDropdown extends StatelessWidget {
  const BrandDropdown({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final brandValue = useState('Apple');
    return BlocBuilder<PostFormBloc, PostFormState>(
      buildWhen: (p, c) => p.post.brand != c.post.brand,
      builder: (context, state) {
        // brandValue.value = state.post.brand.getOrCrash();
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
              child: DropdownButtonHideUnderline(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton<String>(
                    value: state.post.brand.getOrCrash(),
                    elevation: 0,
                    isExpanded: true,
                    style: TextStyle(
                      color: kPrimaryDarkColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                    onChanged: (v) {
                      context
                          .bloc<PostFormBloc>()
                          .add(PostFormEvent.brandChanged(v));
                    },
                    items:
                        PostBrand.brands.map<DropdownMenuItem<String>>((value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}