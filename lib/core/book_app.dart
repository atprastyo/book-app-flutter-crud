import 'package:book_crud/core/injector.dart';
import 'package:book_crud/features/book/presentation/add_book/bloc/add_book_bloc.dart';
import 'package:book_crud/features/book/presentation/add_book/screens/add_book_screen.dart';
import 'package:book_crud/features/book/presentation/home/bloc/books_bloc.dart';
import 'package:book_crud/features/book/presentation/home/screens/home_screen.dart';
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
        routes: {
          '/': (_) => const HomeScreen(),
          'add-book': (_) => BlocProvider<AddBookBloc>(
                create: (_) => injector<AddBookBloc>(),
                child: const AddBookScreen(),
              ),
        },
      ),
    );
  }
}
