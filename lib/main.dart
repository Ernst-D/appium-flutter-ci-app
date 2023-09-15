import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_counter/app.dart';
import 'package:flutter_counter/counter_observer.dart';
import 'package:flutter_driver/driver_extension.dart';

bool enableDriverExtension() => const bool.fromEnvironment('driver');

void main() {
  if (enableDriverExtension()) {
    enableFlutterDriverExtension();
  }

  Bloc.observer = const CounterObserver();
  runApp(const CounterApp());
}
