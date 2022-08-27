import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  final Color? color;

  const LoadingWidget({Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 20,
        width: 20,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: color ?? Theme.of(context).primaryColor,
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
