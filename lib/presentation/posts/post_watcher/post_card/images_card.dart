import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kt_dart/collection.dart';

// class CardImagesList extends StatelessWidget {
//   final KtList<String> images;
//   const CardImagesList({Key key, @required this.images}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // width: double.infinity,
//       height: 200,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         shrinkWrap: true,
//         itemCount: images.size,
//         itemBuilder: (context, index) {
//           return Image(
//             width: MediaQuery.of(context).size.width,
//             height: 200,
//             fit: BoxFit.cover,
//             image: NetworkImage(images[index]),
//           );
//         },
//       ),
//     );
//   }
// }

class CardImagesCarousel extends HookWidget {
  final KtList<String> images;
  final bool circularBorder;
  final double height;
  const CardImagesCarousel(
      {Key key,
      @required this.images,
      @required this.circularBorder,
      @required this.height})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _currentIndex = useState(0);
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider.builder(
          itemCount: images.size,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius:
                  circularBorder ? BorderRadius.circular(8) : BorderRadius.zero,
              child: CachedNetworkImage(
                fadeInDuration: const Duration(milliseconds: 0),
                placeholderFadeInDuration: Duration.zero,
                imageUrl: images[index],
                fit: BoxFit.cover,
                height: height,
                width: MediaQuery.of(context).size.width,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            );
            // return Image(
            //   width: MediaQuery.of(context).size.width,
            //   height: 200,
            //   fit: BoxFit.cover,
            //   image: NetworkImage(images[index]),
            // );
          },
          options: CarouselOptions(
              // enlargeCenterPage: true,
              height: height,
              viewportFraction: 1,
              enableInfiniteScroll: false,
              onPageChanged: (index, _) {
                _currentIndex.value = index;
              }),
        ),
        if (images.size > 1)
          Positioned(
            // textDirection: TextDirection.ltr,
            bottom: 5.0,
            // left: images.size * 80.0,
            // right: images.size * 80.0,
            width: images.size * 28.0,
            child: Container(
              // width: 5.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0x50000000),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: images.map((url) {
                  final int index = images.indexOf(url);

                  return Container(
                    width: 6.0,
                    height: 6.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 3.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentIndex.value == index
                            ? const Color.fromRGBO(255, 255, 255, 1)
                            : const Color.fromRGBO(255, 255, 255, 0.4)),
                  );
                }).asList(),
              ),
            ),
          )
      ],
    );
  }
}
