import 'package:flutter/material.dart';

import '../colors.dart';

class AppDropdownInputField<V> extends StatelessWidget {
  final List<V> data;
  final Function(V?) onChanged;
  final V? selected;
  final bool enabled;
  final String? errorText;
  final String? hintText;
  final String? label;
  final String? Function(V?)? validator;
  final void Function(V?)? onSaved;

  const AppDropdownInputField({
    required this.data,
    required this.selected,
    required this.onChanged,
    this.enabled = true,
    Key? key,
    this.errorText,
    this.hintText,
    this.label,
    this.validator,
    this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      items: data.map((V item) {
        return DropdownMenuItem(
            value: item,
            enabled: enabled,
            child: Text(
              item.toString(),
              style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 16),
            ));
      }).toList(),

      onChanged: onChanged,
      value: selected,
      onSaved: onSaved,
      validator: validator,
      selectedItemBuilder: (BuildContext context) {
        return data.map((V item) {
          return Text(
            item.toString(),
            style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 16),
          );
        }).toList();
      },
      style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 16),
      decoration: InputDecoration(
        errorText: errorText,
        hintText: hintText,
        labelText: label,
        errorStyle: Theme.of(context).textTheme.labelSmall,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.grey300, width: 1.5),
          borderRadius: BorderRadius.circular(10),
        ),

        contentPadding: EdgeInsets.symmetric(horizontal: 10),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.grey300, width: 1.5),
          borderRadius: BorderRadius.circular(8),
        ),

        border: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.grey300, width: 1.5),
          borderRadius: BorderRadius.circular(8),
        ),
        // _border,
        fillColor: Theme.of(context).cardColor,
        filled: true,
      ),
    );
  }
}
