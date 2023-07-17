import 'dart:async';

import 'package:book_crud/core/routes.dart';
import 'package:book_crud/features/book/presentation/home/bloc/books_bloc.dart';
import 'package:book_crud/features/book/presentation/home/widgets/book_list_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Timer? _debouncedTypeTimer;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Books'), centerTitle: true),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.bookFormScreen);
                  },
                  child: const Text('Add Book'),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    final bloc = context.read<BooksBloc>();
                    bloc.add(const DeleteAllBooksEvent());
                  },
                  child: const Text('Delete All'),
                ),
              ],
            ),
            BlocBuilder<BooksBloc, BooksState>(
              builder: (context, state) {
                Widget contain = const SizedBox.shrink();
                state.when(
                  initial: () {},
                  loading: () {},
                  loaded: (books) {
                    if (books.isNotEmpty) {
                      contain = Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 12, 16, 0),
                        child: TextField(
                          onChanged: _onChangeHandler,
                          style: const TextStyle(fontSize: 14),
                          decoration: InputDecoration(
                            isCollapsed: true,
                            contentPadding: const EdgeInsets.all(12),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.withOpacity(.7),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.7),
                                width: .8,
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            labelText: 'Search',
                            labelStyle: const TextStyle(
                              color: Colors.black38,
                              fontSize: 14,
                              height: 1,
                            ),
                            counterText: '',
                            filled: true,
                            fillColor: Colors.grey.withOpacity(.1),
                          ),
                        ),
                      );
                    }
                  },
                  error: () {},
                );
                return contain;
              },
            ),
            Expanded(
              child: BlocBuilder<BooksBloc, BooksState>(
                builder: (context, state) {
                  Widget contain = const SizedBox.shrink();
                  state.when(
                    initial: () => contain = const Text('Book App'),
                    loading: () => contain =
                        const Center(child: CircularProgressIndicator()),
                    loaded: (books) =>
                        contain = BookListContainer(books: books),
                    error: () => contain = const Center(child: Text('error')),
                  );
                  return contain;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onChangeHandler(String value) {
    const Duration duration = Duration(milliseconds: 500);

    if (_debouncedTypeTimer != null) {
      _debouncedTypeTimer!.cancel(); // clear timer
    }

    _debouncedTypeTimer = Timer(duration, () {
      context
          .read<BooksBloc>()
          .add(GetAllBooksEvent(param: SearchParam(value)));
    });
  }
}
