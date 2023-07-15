import 'package:book_crud/features/book/data/models/book.dart';
import 'package:book_crud/features/book/presentation/add_book/bloc/add_book_bloc.dart';
import 'package:book_crud/features/book/presentation/add_book/widgets/category_drop_down.dart';
import 'package:book_crud/features/book/presentation/add_book/widgets/date_picker.dart';
import 'package:book_crud/features/book/presentation/home/bloc/books_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddBookScreen extends StatefulWidget {
  const AddBookScreen({super.key});

  @override
  State<AddBookScreen> createState() => _AddBookScreenState();
}

class _AddBookScreenState extends State<AddBookScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController(),
      _isbnController = TextEditingController(),
      _priceController = TextEditingController(),
      _descriptionController = TextEditingController();

  String? _bookCategory;
  bool _hardCover = false;
  bool? _validCategory;
  DateTime? _publishedAt;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add New Book')),
      body: BlocConsumer<AddBookBloc, AddBookState>(
        listener: (context, state) {
          state.when(
            initial: () => null,
            loading: () => null,
            success: () {
              Navigator.pop(context, true);
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Added Successfully"),
              ));
            },
            failed: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Error Occurred")),
            ),
          );
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.text,
                      maxLength: 60,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      controller: _isbnController,
                      validator: (val) =>
                          val!.isEmpty ? 'Please enter book ISBN' : null,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        labelText: 'ISBN',
                        labelStyle: const TextStyle(color: Colors.black38),
                        counterText: '',
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.7),
                            width: 0,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        fillColor: Colors.grey.withOpacity(0.1),
                      ),
                    ),
                    const SizedBox(height: 14),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      maxLength: 60,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      controller: _titleController,
                      validator: (val) =>
                          val!.isEmpty ? 'Please enter book title' : null,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        labelText: 'Title',
                        labelStyle: const TextStyle(color: Colors.black38),
                        counterText: '',
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.7),
                            width: 0,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        fillColor: Colors.grey.withOpacity(0.1),
                      ),
                    ),
                    const SizedBox(height: 14),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      maxLength: 60,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      controller: _priceController,
                      validator: (val) =>
                          val!.isEmpty ? 'Please enter book price' : null,
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          labelText: 'Price',
                          labelStyle: const TextStyle(color: Colors.black38),
                          counterText: '',
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.withOpacity(0.7),
                              width: 0,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          fillColor: Colors.grey.withOpacity(0.1),
                          prefixText: 'IDR '),
                    ),
                    const SizedBox(height: 14),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      maxLength: 60,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      controller: _descriptionController,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        labelText: 'Description',
                        labelStyle: const TextStyle(color: Colors.black38),
                        counterText: '',
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.7),
                            width: 0,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        fillColor: Colors.grey.withOpacity(0.1),
                      ),
                    ),
                    const SizedBox(height: 14),
                    CategoryDropDown(
                      onChanged: (value) {
                        _bookCategory = value;
                      },
                      hint: Text(
                        'Select Category!',
                        style: TextStyle(
                            color: _validCategory == true
                                ? Colors.black38
                                : Colors.red),
                      ),
                      items: const [
                        'History',
                        'Poetry',
                        'Romance',
                        'Horror',
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Publish Date: '),
                        DatePicker(
                          selectedDateTime: (value) => _publishedAt = value,
                          dateTime: _publishedAt,
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    Row(
                      children: [
                        Checkbox(
                          value: _hardCover,
                          onChanged: (value) {
                            if (value != null) {
                              setState(() => _hardCover = value);
                            }
                          },
                        ),
                        const Text(
                          'Hard Cover',
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          textStyle: const TextStyle(
                            color: Color.fromRGBO(0, 160, 227, 1),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: const BorderSide(
                              color: Color.fromRGBO(0, 160, 227, 1),
                            ),
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate() &&
                              _bookCategory != null) {
                            int count = context.read<BooksBloc>().total;
                            String id = 'BU${count.toString().padLeft(4)}';
                            int price =
                                int.tryParse(_priceController.text) ?? 0;

                            context.read<AddBookBloc>().add(
                                  AddNewBookEvent(
                                    Book(
                                      id: id,
                                      isbn: _isbnController.text,
                                      price: price,
                                      category: _bookCategory ?? '',
                                      hardCover: _hardCover,
                                      publishedAt: _publishedAt,
                                      title: _titleController.text,
                                      description: _descriptionController.text,
                                    ),
                                  ),
                                );
                          } else {
                            if (_bookCategory == null) {
                              setState(() => _validCategory = false);
                            }
                          }
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            "Simpan",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
