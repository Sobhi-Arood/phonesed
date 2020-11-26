import 'package:flutter/material.dart';
import 'package:phonesed/domain/entities/post.dart';

import '../../../../constants.dart';

class DetailTopWidget extends StatelessWidget {
  final Post post;
  const DetailTopWidget({Key key, @required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            post.title.getOrCrash(),
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.headline4,
            // style: const TextStyle(
            //   fontSize: 26,
            //   color: kPrimaryDarkColor,
            //   fontWeight: FontWeight.bold,
            // ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                post.brand.getOrCrash(),
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                    fontWeight: FontWeight.w900, color: kSecondaryLightColor),
                // style: const TextStyle(
                //   fontWeight: FontWeight.w700,
                //   color: kSecondaryLightColor,
                // ),
              ),
              Text(
                'AED ${post.price.getOrCrash()}',
                style: Theme.of(context).textTheme.headline5,
                // style: const TextStyle(
                //   color: kPrimaryColor,
                //   fontSize: 18,
                //   fontWeight: FontWeight.w600,
                // ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              const Icon(
                Icons.location_on,
                color: kSecondaryLightColor,
              ),
              const SizedBox(
                width: 14,
              ),
              Text(
                post.city.getOrCrash(),
                style: Theme.of(context).textTheme.caption,
                // style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              const Icon(
                Icons.chevron_right,
                size: 20,
                color: kPrimaryDarkColor,
              ),
              Text(
                post.area.getOrCrash(),
                style: Theme.of(context).textTheme.caption,
                // style: const TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 15,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (post.exhangable)
                    const Icon(
                      Icons.done,
                      color: Color(0xFF04865A),
                    )
                  else
                    const Icon(
                      Icons.clear,
                      color: Color(0xFFD10909),
                    ),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    'Exchangable',
                    style: Theme.of(context).textTheme.caption,
                    // style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (post.negiotable)
                    const Icon(
                      Icons.done,
                      color: Color(0xFF04865A),
                    )
                  else
                    const Icon(
                      Icons.clear,
                      color: Color(0xFFD10909),
                    ),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    'Negotiable',
                    style: Theme.of(context).textTheme.caption,
                    // style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (post.headphones)
                    const Icon(
                      Icons.done,
                      color: Color(0xFF04865A),
                    )
                  else
                    const Icon(
                      Icons.clear,
                      color: Color(0xFFD10909),
                    ),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    'Headphones',
                    style: Theme.of(context).textTheme.caption,
                    // style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (post.charger)
                    const Icon(
                      Icons.done,
                      color: Color(0xFF04865A),
                    )
                  else
                    const Icon(
                      Icons.clear,
                      color: Color(0xFFD10909),
                    ),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    'Charger',
                    style: Theme.of(context).textTheme.caption,
                    // style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ],
          ),
          if (post.moreAccessories.getOrCrash().isNotEmpty) ...[
            const SizedBox(height: 15),
            Wrap(children: [
              const Text(
                'More accessories: ',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0x60000000),
                ),
              ),
              Text(
                post.moreAccessories.getOrCrash(),
                style: Theme.of(context).textTheme.caption,
                // style: const TextStyle(
                //   fontSize: 16,
                //   fontWeight: FontWeight.w500,
                // ),
              )
            ])
          ]
        ],
      ),
    );
  }
}
