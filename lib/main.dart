import 'package:admob_flutter/admob_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:phonesed/injection.dart';
import 'package:phonesed/presentation/core/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp();
  // Admob.initialize();
  Admob.initialize(testDeviceIds: ['emulator-5554']);
  runApp(AppWidget());
}
