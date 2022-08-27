// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
// import 'package:flutter/material.dart';
// import 'package:shimmer_animation/shimmer_animation.dart';
// import 'package:ddd_sample/presentation/core/colors.dart';
// import 'package:ddd_sample/presentation/core/images.dart';
//
// class ImageView extends StatelessWidget {
//   final BoxFit? fit;
//   final String? imageUrl;
//   final double? height;
//   final double? width;
//   final Widget? errorWidget;
//   final BorderRadius? borderRadius;
//
//   const ImageView({
//     super.key,
//     this.fit,
//     this.imageUrl,
//     this.width,
//     this.errorWidget,
//     this.height,
//     this.borderRadius,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: borderRadius ?? BorderRadius.zero,
//       child: CachedNetworkImage(
//           fit: fit ?? BoxFit.cover,
//           height: height,
//           width: width,
//           placeholder: (_, __) => Shimmer(
//                   child: Container(
//                 height: height,
//                 color: Theme.of(context).dividerColor,
//               )),
//           //  boxDecoration: BoxDecoration(borderRadius: borderRadius),
//           imageUrl: imageUrl ?? '',
//           errorWidget: (_, __, ___) =>
//               errorWidget ?? (Image.asset(AppImages.defaultAvatar))),
//     );
//   }
// }
