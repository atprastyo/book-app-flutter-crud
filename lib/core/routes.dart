import 'package:book_crud/core/injector.dart';
import 'package:book_crud/features/book/data/models/book.dart';
import 'package:book_crud/features/book/presentation/book/bloc/book_bloc.dart';
import 'package:book_crud/features/book/presentation/book/screens/book_form_screen.dart';
import 'package:book_crud/features/book/presentation/home/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Routes {
  const Routes._();

  static const String bookFormScreen = 'book-form-screen';

  static Map<String, WidgetBuilder> routeList = <String, WidgetBuilder>{
    '/': (_) => const HomeScreen(),
    bookFormScreen: (context) {
      final Object? args = ModalRoute.of(context)?.settings.arguments;

      return BlocProvider<BookBloc>(
        create: (_) => injector<BookBloc>(),
        child: BookFormScreen(selected: args is Book ? args : null),
      );
    },
  };
}
