import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PageBase extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final SystemUiOverlayStyle? systemUiOverlayStyle;
  final Color? backgroundColor;

  const PageBase(
      {Key? key,
      required this.body,
      this.appBar,
      this.systemUiOverlayStyle,
      this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle ??
        SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).backgroundColor,
          statusBarIconBrightness: Brightness.dark,
          // For Android (dark icons)
          statusBarBrightness: Brightness.light,
          // For iOS (dark icons)
        ));
    return Scaffold(
      backgroundColor:
          backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
      appBar: appBar,
      body: body,
    );
  }
}
