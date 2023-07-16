import 'package:book_crud/core/injector.dart';
import 'package:book_crud/core/routes.dart';
import 'package:book_crud/features/book/presentation/home/bloc/books_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BooksBloc>(
      create: (_) => injector<BooksBloc>()..add(const GetAllBooksEvent()),
      child: MaterialApp(
        title: 'Books',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
          useMaterial3: true,
        ),
        routes: Routes.routeList,
      ),
    );
  }
}
