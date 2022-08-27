import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/colors.dart';
import '../../core/vectors.dart';

class SearchBox extends StatelessWidget {
  final TextEditingController controller;
  final Function(String)? onChanged, onSubmitted;
  final String? hint;

  const SearchBox(
      {required this.controller,
      this.hint,
      this.onChanged,
      this.onSubmitted,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,

      onFieldSubmitted: onSubmitted,
      style: Theme.of(context).textTheme.bodyLarge,
      decoration: InputDecoration(
        counterText: "",
        prefixIcon: Padding(
          padding: const EdgeInsets.fromLTRB(15, 13, 10, 13),
          child: SvgPicture.asset(
            AppVectors.search,
            height: 16,
            width: 16,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.grey300, width: 1.5),
          borderRadius: BorderRadius.circular(4),
        ),

        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.grey300, width: 1.5),
          borderRadius: BorderRadius.circular(4),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.grey300, width: 1.5),
          borderRadius: BorderRadius.circular(4),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.grey300, width: 1.5),
          borderRadius: BorderRadius.circular(4),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.grey300, width: 1.5),
          borderRadius: BorderRadius.circular(4),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.grey300, width: 1.5),
          borderRadius: BorderRadius.circular(4),
        ),
        // _border,
        fillColor: Theme.of(context).cardColor,
        filled: true,
        errorMaxLines: 2,
        suffixIcon: controller.text.isNotEmpty
            ? IconButton(
                iconSize: 8,
                padding: const EdgeInsets.all(17),
                icon: SvgPicture.asset(AppVectors.exit),
                onPressed: () {
                  controller.clear();
                  onChanged?.call('');
                },
              )
            : null,


        focusColor: Theme.of(context).secondaryHeaderColor,
        hoverColor: Theme.of(context).secondaryHeaderColor,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        hintText: hint ?? 'Search',
        hintStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontFamily: 'SourceSansPro',
            color: AppColors.grey400),
      ),
    );
  }
}
