import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ddd_sample/presentation/core/vectors.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Function()? onBackTapped;
  final void Function()? prefixTapped;
  final bool hasLeading;

  final String? prefixAssetName;

  const DefaultAppBar(
      {Key? key,
      this.hasLeading = true,
      required this.title,
      this.onBackTapped,
      this.prefixTapped,
      this.prefixAssetName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: Theme.of(context).textTheme.labelLarge,
      ),
      centerTitle: true,
      actions: [
        prefixAssetName != null
            ? IconButton(
                iconSize: 25,
                onPressed: prefixTapped,
                icon: SvgPicture.asset(
                  prefixAssetName!,
                  height: 25,
                  color: Theme.of(context).cardColor,
                ),
              )
            : Container(),
      ],
      leading: hasLeading
          ? IconButton(
              iconSize: 30,
              onPressed: onBackTapped ??
                  () {
                    context.router.pop();
                  },
              icon: SvgPicture.asset(
                AppVectors.back,
                height: 30,
                color: Theme.of(context).cardColor,
              ),
            )
          : Container(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(52);
}
