import 'package:book_crud/features/book/data/models/book.dart';
import 'package:flutter/material.dart';

class BookListContainer extends StatelessWidget {
  const BookListContainer({Key? key, required this.books}) : super(key: key);
  final List<Book> books;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(books[index].title),
                Text(books[index].isbn),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.edit_note)),
        ],
      ),
      itemCount: books.length,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    );
  }
}
