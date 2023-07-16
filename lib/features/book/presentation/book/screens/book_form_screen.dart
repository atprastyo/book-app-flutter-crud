import 'package:book_crud/features/book/data/models/book.dart';
import 'package:book_crud/features/book/presentation/book/bloc/book_bloc.dart';
import 'package:book_crud/features/book/presentation/book/widgets/category_drop_down.dart';
import 'package:book_crud/features/book/presentation/book/widgets/date_picker.dart';
import 'package:book_crud/features/book/presentation/home/bloc/books_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

class BookFormScreen extends StatefulWidget {
  const BookFormScreen({super.key, this.selected});

  final Book? selected;

  @override
  State<BookFormScreen> createState() => _BookFormScreenState();
}

class _BookFormScreenState extends State<BookFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController(),
      _codeController = TextEditingController(),
      _isbnController = TextEditingController(),
      _priceController = TextEditingController(),
      _descriptionController = TextEditingController();

  String? _bookCategory;
  bool _hardCover = false;
  bool? _validCategory;
  DateTime? _publishedAt;

  @override
  void initState() {
    super.initState();
    if (widget.selected != null) {
      _codeController.text = widget.selected?.code ?? '';
      _isbnController.text = widget.selected?.isbn ?? '';
      _titleController.text = widget.selected?.title ?? '';
      _priceController.text = (widget.selected?.price ?? '').toString();
      _descriptionController.text = widget.selected?.description ?? '';
      _bookCategory = widget.selected?.category;
      _hardCover = widget.selected?.hardCover ?? false;
      _publishedAt = widget.selected?.publishedAt;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.selected != null ? 'Edit Book' : 'Add New Book'),
        ),
        body: BlocConsumer<BookBloc, BookState>(
          listener: (context, state) {
            state.when(
              initial: () => null,
              loading: () => null,
              success: () {
                Navigator.pop(context, true);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "${widget.selected != null ? "Updated" : "Added"} Successfully",
                    ),
                  ),
                );
                context.read<BooksBloc>().add(const GetAllBooksEvent());
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
                        maxLength: 6,
                        inputFormatters: <TextInputFormatter>[
                          _UpperCaseTextFormatter()
                        ],
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        controller: _codeController,
                        validator: (val) => val!.isEmpty || val.length < 6
                            ? 'Please enter book Code with 6 character'
                            : null,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          labelText: 'Code',
                          labelStyle: const TextStyle(color: Colors.black38),
                          counterText: '',
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.withOpacity(0.7),
                              width: .2,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.withOpacity(0.7),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          fillColor: Colors.grey.withOpacity(0.1),
                        ),
                      ),
                      const SizedBox(height: 14.0),
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
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
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
                              width: .2,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.withOpacity(0.7),
                              width: 1,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                          ),
                          fillColor: Colors.grey.withOpacity(0.1),
                        ),
                      ),
                      const SizedBox(height: 14),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        maxLength: 60,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        controller: _titleController,
                        validator: (val) =>
                            val!.isEmpty ? 'Please enter book title' : null,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
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
                              width: .2,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.withOpacity(0.7),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
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
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
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
                              width: .2,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.withOpacity(0.7),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          fillColor: Colors.grey.withOpacity(0.1),
                          prefixText: 'IDR ',
                          prefixStyle: const TextStyle(fontSize: 16),
                        ),
                      ),
                      const SizedBox(height: 14),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        minLines: 1,
                        maxLines: 3,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        controller: _descriptionController,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 12),
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
                              width: .2,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Colors.grey.withOpacity(0.7),
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          fillColor: Colors.grey.withOpacity(0.1),
                        ),
                      ),
                      const SizedBox(height: 14),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Colors.grey.withOpacity(0.1),
                          ),
                        ),
                        child: CategoryDropDown(
                          onChanged: (value) {
                            _bookCategory = value;
                          },
                          initialItem: _bookCategory,
                          hint: Text(
                            'Select Category!',
                            style: TextStyle(
                              color: _validCategory != null && !_validCategory!
                                  ? Colors.red
                                  : Colors.black38,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          items: const [
                            'History',
                            'Poetry',
                            'Romance',
                            'Horror',
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          const Text('Publish Date: '),
                          DatePicker(
                            selectedDateTime: (value) => _publishedAt = value,
                            dateTime: _publishedAt,
                          ),
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
                        ],
                      ),
                      ElevatedButton(
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
                            const Uuid uuid = Uuid();

                            String id = uuid.v4();

                            int price =
                                int.tryParse(_priceController.text) ?? 0;

                            final Book book = Book(
                              id: widget.selected?.id ?? id,
                              code: _codeController.text,
                              isbn: _isbnController.text,
                              title: _titleController.text,
                              price: price,
                              description: _descriptionController.text,
                              category: _bookCategory ?? '',
                              hardCover: _hardCover,
                              publishedAt: _publishedAt ?? DateTime.now(),
                            );

                            if (widget.selected != null) {
                              context
                                  .read<BookBloc>()
                                  .add(UpdateBookEvent(book));
                            } else {
                              context
                                  .read<BookBloc>()
                                  .add(AddNewBookEvent(book));
                            }
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
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
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
      ),
    );
  }
}

class _UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    return newValue.copyWith(text: newValue.text.toUpperCase());
  }
}
