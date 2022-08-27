import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final TextStyle? style;

  const AppTextButton(
      {Key? key, required this.onPressed, this.style, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.resolveWith(
                (states) => Colors.transparent)),
        onPressed: onPressed,
        child: Text(
          text,
          style: style ?? Theme.of(context).textTheme.labelMedium,
        ));
  }
}
