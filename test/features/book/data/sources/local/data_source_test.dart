import 'package:book_crud/features/book/data/models/book.dart';
import 'package:book_crud/features/book/data/sources/local/data_source.dart';
import 'package:book_crud/features/book/domain/entities/book_hive.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'data_source_test.mocks.dart';

@GenerateMocks([HiveInterface, Box])
void main() {
  late MockBox<BookHive> mockBox;
  late MockHiveInterface mockHive;
  late DataSource dataSource;
  const String boxKey = "books_box";

  setUp(() async {
    mockBox = MockBox();
    mockHive = MockHiveInterface();
    dataSource = DataSource(hive: mockHive, booksBox: mockBox);
  });

  Book book = Book(
    id: "1",
    code: "",
    isbn: "",
    title: "title",
    price: 10000,
    description: "content",
    category: "History",
    hardCover: false,
    publishedAt: DateTime.now(),
    createdAt: DateTime.now().millisecondsSinceEpoch,
  );

  test('addBook should save book on Local DB', () async {
    when(mockHive.openBox(boxKey)).thenAnswer((_) async => mockBox);

    await dataSource.addBook(book);

    verify(mockBox.put(book.id, book));
  });
}
