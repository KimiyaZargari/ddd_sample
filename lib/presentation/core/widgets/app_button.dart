import 'package:flutter/material.dart';
import 'package:ddd_sample/presentation/core/widgets/loading_widget.dart';

class AppButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final EdgeInsetsGeometry? margin;
  final Color? buttonColor, textColor;
  final bool loading, enabled, hasBorder, removePadding;
  final double? width, height;
  final Widget? icon;
  final FontWeight? bold;
  final double? fontSize;

  const AppButton(
      {Key? key,
      required this.onPressed,
      this.removePadding = false,
      required this.text,
      this.hasBorder = true,
      this.buttonColor,
      this.icon,
      this.height,
      this.enabled = true,
      this.width,
      this.loading = false,
      this.textColor,
      this.margin,
      this.bold,
      this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      child: ElevatedButton(
          onPressed: enabled
              ? loading
                  ? () {}
                  : onPressed
              : () {},
          style: ElevatedButton.styleFrom(
              primary: enabled
                  ? buttonColor
                  : (buttonColor?.withOpacity(0.2) ??
                      Theme.of(context).primaryColor.withOpacity(0.2)),
              elevation: 0,
              padding: removePadding ? EdgeInsets.zero : null,
              side: enabled && hasBorder
                  ? BorderSide(color: Theme.of(context).primaryColor)
                  : null),
          child: loading
              ? LoadingWidget(
                  color: textColor ?? Theme.of(context).cardColor,
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (icon != null) icon!,
                    Text(
                      text,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: textColor,
                          fontWeight: bold,
                          fontSize: fontSize),
                    ),
                  ],
                )),
    );
  }
}
