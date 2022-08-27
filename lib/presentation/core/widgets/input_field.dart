import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ddd_sample/presentation/core/colors.dart';
import 'package:ddd_sample/presentation/core/vectors.dart';

class AppInputField extends StatefulWidget {
  final Function(String?)? onSaved;
  final Function()? onTap;
  final bool isPassword, isLast;
  final bool enabled;
  final TextInputType textInputType;
  final int? maxLines, maxLength;
  final Widget? suffix;
  final Widget? suffixIcon;
  final Widget? prefix;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;

  final String? Function(String?)? validator;
  final String? hint;
  final String? errorText;
  final String? initialVal;
  final String? helperText;

  const AppInputField(
      {Key? key,
      this.maxLines,
      this.maxLength,
      this.onSaved,
      this.initialVal,
      this.controller,
      this.hint,
      this.textInputType = TextInputType.text,
      this.isPassword = false,
      this.isLast = false,
      this.validator,
      this.onTap,
      this.enabled = true,
      this.suffix,
      this.errorText,
      this.prefix,
      this.suffixIcon,
      this.inputFormatters,
      this.helperText})
      : super(key: key);

  @override
  State<AppInputField> createState() => _AppInputFieldState();
}

class _AppInputFieldState extends State<AppInputField> {
  bool showingPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: widget.onTap,
      enabled: widget.enabled,
      initialValue: widget.initialVal,
      readOnly: widget.onTap == null ? false : true,
      onSaved: widget.onSaved,
      controller: widget.controller,
      maxLines: widget.maxLines ?? 1,
      keyboardType: widget.textInputType,
      textInputAction:
          widget.isLast ? TextInputAction.done : TextInputAction.next,
      validator: widget.validator,
      inputFormatters: widget.inputFormatters,
      style: Theme.of(context).textTheme.bodyLarge,
      maxLength: widget.maxLength,
      obscureText: widget.isPassword && !showingPassword,
      decoration: InputDecoration(
        counterText: '',
        prefixIcon: widget.prefix,
        suffix: widget.suffix,
        suffixIcon: widget.suffixIcon ??
            (widget.isPassword
                ? Padding(
                    padding: const EdgeInsets.all(14),
                    child: GestureDetector(
                      child: SvgPicture.asset(
                        showingPassword
                            ? AppVectors.showPassword
                            : AppVectors.hidePassword,
                        height: 16,
                        width: 16,
                        color: Theme.of(context).iconTheme.color,
                      ),
                      onTap: () {
                        setState(() {
                          showingPassword = !showingPassword;
                        });
                      },
                    ),
                  )
                : null),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.grey300, width: 1.5),
          borderRadius: BorderRadius.circular(10),
        ),
        helperText: widget.helperText,
        helperStyle: Theme.of(context)
            .textTheme
            .titleSmall!
            .copyWith(color: AppColors.grey500),
        errorText: widget.errorText,
        errorStyle: Theme.of(context).textTheme.labelSmall,

        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.grey300, width: 1.5),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).errorColor, width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.grey300, width: 1.5),
          borderRadius: BorderRadius.circular(8),
        ),

        border: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.grey300, width: 1.5),
          borderRadius: BorderRadius.circular(8),
        ),
        // _border,
        fillColor: widget.enabled
            ? Theme.of(context).cardColor
            : Theme.of(context).unselectedWidgetColor,
        filled: true,
        errorMaxLines: 2,
        focusColor: Theme.of(context).secondaryHeaderColor,
        hoverColor: Theme.of(context).secondaryHeaderColor,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        hintText: widget.hint,
        hintStyle: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
