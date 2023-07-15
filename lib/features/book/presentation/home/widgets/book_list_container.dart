import 'package:book_crud/core/routes.dart';
import 'package:book_crud/features/book/data/models/book.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BookListContainer extends StatelessWidget {
  const BookListContainer({Key? key, required this.books}) : super(key: key);
  final List<Book> books;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.black87,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        onPressed: () => _showBookProfile(context, books[index]),
        child: Row(
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
            IconButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  Routes.bookFormScreen,
                  arguments: books[index],
                );
              },
              icon: const Icon(Icons.edit_note),
            ),
          ],
        ),
      ),
      itemCount: books.length,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    );
  }

  void _showBookProfile(BuildContext context, Book book) {
    showDialog(
      context: context,
      builder: (_) {
        int activePage = 0;
        return StatefulBuilder(
          builder: (BuildContext context, setState) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() => activePage = 0);
                        },
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: activePage == 0 ? Colors.white : Colors.grey,
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(8),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8,
                            ),
                            child: Text('Profile'),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() => activePage = 1);
                        },
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: activePage == 1 ? Colors.white : Colors.grey,
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(8),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8,
                            ),
                            child: Text('Detail'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24.0),
                    padding: const EdgeInsets.all(16.0),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: activePage == 0
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.image,
                                size: 90,
                                color: Colors.grey,
                              ),
                              Text(book.title),
                              if (book.description != null)
                                Text(book.description!),
                            ],
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text('Code: ${book.code}'),
                              Text('Price: IDR ${book.price}'),
                              Text('Category: ${book.category}'),
                              if (book.publishedAt != null)
                                Text(
                                    'Published at ${DateFormat('MMMM dd, yyyy').format(book.publishedAt!)}'),
                              Text('ISBN: ${book.isbn}'),
                              Text(
                                  'Hard cover: ${book.hardCover ? 'yes' : 'no'}'),
                            ],
                          ),
                  ),
                  const SizedBox(height: 8.0),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 16,
                      ),
                      child: Text(
                        'Close',
                        style: TextStyle(
                          height: 1,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
