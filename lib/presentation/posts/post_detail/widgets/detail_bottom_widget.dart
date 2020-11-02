import 'package:flutter/material.dart';

import '../../../../constants.dart';

class DetailBottomWidget extends StatelessWidget {
  final String age;
  final String condition;
  final String description;
  const DetailBottomWidget(
      {Key key,
      @required this.age,
      @required this.condition,
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
                  'Age',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0x60000000),
                  ),
                ),
                Text(
                  age,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // spacing: 40,
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
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          Text(
            description,
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Colors.grey[800]),
          ),
          const SizedBox(height: 32),
          const Divider(),
        ],
      ),
    );
  }
}
