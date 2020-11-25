import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:kt_dart/collection.dart';
import 'package:phonesed/application/core/posts_filter/posts_form_filter/posts_form_filter_bloc.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/domain/entities/post.dart';
import 'package:phonesed/presentation/posts/post_watcher/post_card/post_card_widget.dart';

class FilterPostsWatchBody extends StatelessWidget {
  final KtList<Post> posts;
  final String filterCity;
  final String filterBrand;
  final bool filterExchangable;
  final bool filterHeadphones;
  final String filterPrice;
  const FilterPostsWatchBody({
    Key key,
    @required this.posts,
    @required this.filterCity,
    @required this.filterBrand,
    @required this.filterExchangable,
    @required this.filterHeadphones,
    @required this.filterPrice,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsFormFilterBloc, PostsFormFilterState>(
        builder: (context, state) {
      // print(state.city);
      KtList<Post> filteredList = posts;

      if (filterCity != kFilterCities.first) {
        filteredList =
            filteredList.filter((post) => post.city.getOrCrash() == filterCity);
      } else {
        filteredList =
            filteredList.filter((post) => post.city.getOrCrash() != filterCity);
      }

      if (filterBrand != kFilterBrands.first) {
        filteredList = filteredList
            .filter((post) => post.brand.getOrCrash() == filterBrand);
      } else {
        filteredList = filteredList
            .filter((post) => post.brand.getOrCrash() != filterBrand);
      }

      filteredList = filteredList.filter((post) {
        if (filterPrice == kFilterPrices[1]) {
          return post.price.getOrCrash() <= 500;
        } else if (filterPrice == kFilterPrices[2]) {
          return post.price.getOrCrash() > 500 &&
              post.price.getOrCrash() <= 1000;
        } else if (filterPrice == kFilterPrices[3]) {
          return post.price.getOrCrash() > 1000 &&
              post.price.getOrCrash() <= 2000;
        } else if (filterPrice == kFilterPrices[4]) {
          return post.price.getOrCrash() > 2000 &&
              post.price.getOrCrash() <= 3000;
        } else if (filterPrice == kFilterPrices[5]) {
          return post.price.getOrCrash() > 3000 &&
              post.price.getOrCrash() <= 4000;
        } else if (filterPrice == kFilterPrices[6]) {
          return post.price.getOrCrash() > 4000;
        }

        return post.price.getOrCrash() > 0;
      });

      // print(filteredList.size);
      if (filteredList.isEmpty()) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/search.png',
              scale: 6,
            ),
            // const SizedBox(height: 10),
            Text(
              'No results',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.grey[300],
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
            // const SizedBox(height: 100),
          ],
        );
      }

      return ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: filteredList.size,
        itemBuilder: (context, index) {
          final post = filteredList.get(index);
          if (post.failureOption.isSome()) {
            return Container(
              color: Colors.red,
              child: Text(
                post.failureOption.fold(
                  () => '',
                  (f) => f.toString(),
                ),
              ),
            );
          } else {
            // return Text(post.city.getOrCrash());
            return PostCard(key: ValueKey(post.id), post: post);
          }
        },
      );
    });
  }
}
