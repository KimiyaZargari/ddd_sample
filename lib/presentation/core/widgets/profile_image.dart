import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:ddd_sample/presentation/core/images.dart';

class ProfileImage extends StatelessWidget {
  final Either<String?, File> image;
  final String? noImageText;
  final double radius;

  const ProfileImage({
    super.key,
    required this.image,
    required this.radius,
    this.noImageText,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: radius,
        child: ClipOval(
          child: image.fold(
              (l) => FancyShimmerImage(
                  boxFit: BoxFit.cover,
                  imageUrl: l ?? '',
                  errorWidget: noImageText != null
                      ? CircleAvatar(
                          child: Text(noImageText!,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2) /////////////9
                              ),
                        )
                      : (Image.asset(AppImages.defaultAvatar))),
              (r) => Image.file(
                    r,
                    height: radius * 2,
                    width: radius * 2,
                    fit: BoxFit.cover,
                  )),
        )
      ),
    );
  }
}
