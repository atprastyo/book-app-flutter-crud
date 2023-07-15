import 'package:book_crud/core/app_extension.dart';
import 'package:flutter/material.dart';

class CategoryDropDown<T> extends StatefulWidget {
  const CategoryDropDown({
    Key? key,
    required this.onChanged,
    required this.items,
    this.initialItem,
    this.hint,
  }) : super(key: key);

  final ValueChanged<T> onChanged;
  final List<T> items;
  final T? initialItem;
  final Widget? hint;

  @override
  State<CategoryDropDown> createState() => _CategoryDropDownState<T>();
}

class _CategoryDropDownState<T> extends State<CategoryDropDown<T>> {
  T? selectedItem;

  String checkType(T item) {
    if (item.isEnum) return item.getEnumString;
    return item.toString();
  }

  @override
  void initState() {
    if (widget.initialItem != null) {
      selectedItem = widget.initialItem;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonFormField<T>(
        value: selectedItem,
        onChanged: (T? currentItem) {
          widget.onChanged(currentItem as T);
          setState(() => selectedItem = currentItem);
        },
        hint: widget.hint ?? const Text('Select Item'),
        items: widget.items
            .map(
              (item) => DropdownMenuItem<T>(
                value: item,
                child: Text(
                  checkType(item),
                  style: const TextStyle(fontSize: 15),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
