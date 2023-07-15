import 'package:book_crud/features/book/presentation/home/bloc/books_bloc.dart';
import 'package:book_crud/features/book/presentation/home/widgets/book_list_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Books')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  final bloc = context.read<BooksBloc>();
                  final Object? refresh =
                      await Navigator.pushNamed<Object?>(context, 'add-book');
                  if (refresh == true) {
                    bloc.add(const GetAllBooksEvent());
                  }
                },
                child: const Text('Add Book'),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Delete All'),
              ),
            ],
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
                    error: () => contain = const Center(child: Text('error')));
                return contain;
              },
            ),
          ),
        ],
      ),
    );
  }
}
