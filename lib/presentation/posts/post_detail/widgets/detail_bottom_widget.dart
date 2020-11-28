import 'package:flutter/material.dart';

import '../../../../constants.dart';

class DetailBottomWidget extends StatelessWidget {
  final String model;
  final String age;
  final String condition;
  final String storageSize;
  final String description;
  const DetailBottomWidget(
      {Key key,
      @required this.model,
      @required this.age,
      @required this.condition,
      @required this.storageSize,
      @required this.description})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Details',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 20,
              color: kPrimaryDarkColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 18),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // spacing: 40,
              children: [
                const Text(
                  'Model',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0x60000000),
                  ),
                ),
                Text(
                  model,
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(fontWeight: FontWeight.w700),
                  // style: const TextStyle(
                  //     fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          const SizedBox(height: 11),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // spacing: 40,
              children: [
                const Text(
                  'Age',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0x60000000),
                  ),
                ),
                Text(
                  age,
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(fontWeight: FontWeight.w700),
                  // style: const TextStyle(
                  //     fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          const SizedBox(height: 11),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Condition',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0x60000000),
                  ),
                ),
                Text(
                  condition,
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          const SizedBox(height: 11),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Storage Size',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0x60000000),
                  ),
                ),
                Text(
                  storageSize,
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          Text(
            description.isEmpty ? 'No description' : description,
            style: description.isEmpty
                ? Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Colors.grey[400], fontStyle: FontStyle.italic)
                : Theme.of(context).textTheme.bodyText1,
            // style: TextStyle(
            //     fontSize: 17,
            //     fontWeight: FontWeight.w500,
            //     color: Colors.grey[800]),
          ),
          const SizedBox(height: 32),
          const Divider(),
        ],
      ),
    );
  }
}
