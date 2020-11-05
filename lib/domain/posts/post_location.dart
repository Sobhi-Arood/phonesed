import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';

class PostLocation {
  String city;
  List<dynamic> areas;

  PostLocation({@required this.city, @required this.areas});

  factory PostLocation.fromJson(Map<String, dynamic> json) {
    return PostLocation(
        city: json['city'] as String, areas: json['areas'] as List<dynamic>);
  }
}
