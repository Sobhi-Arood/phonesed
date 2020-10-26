import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:phonesed/injection.dart';
import 'package:phonesed/presentation/core/app_widget.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(AppWidget());
}
