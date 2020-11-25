import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/core/posts_filter/posts_form_filter/posts_form_filter_bloc.dart';
import 'package:phonesed/constants.dart';

class CityFilterListField extends StatelessWidget {
  const CityFilterListField({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsFormFilterBloc, PostsFormFilterState>(
      buildWhen: (p, c) => p.city != c.city,
      builder: (context, state) {
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
              height: 60,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: kFilterCities.length,
                itemBuilder: (context, index) {
                  final itemCity = kFilterCities[index];
                  return GestureDetector(
                    onTap: () {
                      context
                          .read<PostsFormFilterBloc>()
                          .add(PostsFormFilterEvent.cityChanged(itemCity));
                    },
                    child: Material(
                      color: kPrimaryLightColor,
                      shape: RoundedRectangleBorder(
                        side: state.city == itemCity
                            ? const BorderSide(color: kPrimaryColor, width: 2.5)
                            : BorderSide.none,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 32.0),
                        child: Center(
                          child: Text(
                            itemCity,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, state) {
                  return const SizedBox(
                    width: 12,
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
