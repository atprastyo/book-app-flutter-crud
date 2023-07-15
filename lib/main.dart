import 'package:book_crud/core/book_app.dart';
import 'package:book_crud/core/injector.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  runApp(const BookApp());
}
