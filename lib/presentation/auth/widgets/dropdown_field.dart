// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:ddd_sample/presentation/core/vectors.dart';
//
// import '../../core/colors.dart';
//
// class DropdownField extends StatelessWidget {
//   final List<String> items;
//
//   const DropdownField({required this.items, Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonFormField<String>(
//       items: items
//           .map((e) => DropdownMenuItem<String>(
//                 value: e,
//                 onTap: () {},
//                 child: Text(e),
//               ))
//           .toList(),
//       onChanged: (_) {},
//       iconSize: 10,
//       icon: SvgPicture.asset(AppVectors.chevronDown),
//       decoration: InputDecoration(
//         counterText: "",
//
//         focusedBorder: OutlineInputBorder(
//           borderSide: const BorderSide(color: AppColors.grey300, width: 1.5),
//           borderRadius: BorderRadius.circular(10),
//         ),
//
//         enabledBorder: OutlineInputBorder(
//           borderSide: const BorderSide(color: AppColors.grey300, width: 1.5),
//           borderRadius: BorderRadius.circular(8),
//         ),
//         focusedErrorBorder: OutlineInputBorder(
//           borderSide: const BorderSide(color: AppColors.grey300, width: 1.5),
//           borderRadius: BorderRadius.circular(8),
//         ),
//         disabledBorder: OutlineInputBorder(
//           borderSide: const BorderSide(color: AppColors.grey300, width: 1.5),
//           borderRadius: BorderRadius.circular(8),
//         ),
//         errorBorder: OutlineInputBorder(
//           borderSide: const BorderSide(color: AppColors.grey300, width: 1.5),
//           borderRadius: BorderRadius.circular(8),
//         ),
//         border: OutlineInputBorder(
//           borderSide: const BorderSide(color: AppColors.grey300, width: 1.5),
//           borderRadius: BorderRadius.circular(8),
//         ),
//         // _border,
//         fillColor: Theme.of(context).cardColor,
//         filled: true,
//         errorMaxLines: 2,
//         focusColor: Theme.of(context).secondaryHeaderColor,
//         hoverColor: Theme.of(context).secondaryHeaderColor,
//         contentPadding:
//             const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
//       ),
//     );
//   }
// }
