// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:ddd_sample/presentation/auth/widgets/search_box.dart';
//
// import '../../../../domain/bank_setup/country_bank_setup_model.dart';
//
// class LocationCountriesDialog extends StatelessWidget {
//   final String title;
//   final CountriesBankSetupModel data;
//   final TextEditingController searchController = TextEditingController();
//
//   LocationCountriesDialog({required this.title, required this.data, Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       insetPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
//       child: StatefulBuilder(builder: (context, setState) {
//         return Container(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//           decoration: BoxDecoration(
//               color: Theme.of(context).cardColor,
//               borderRadius: const BorderRadius.all(Radius.circular(8))),
//           child: Column(
//             children: [
//               Text(
//                 title,
//                 style: Theme.of(context).textTheme.titleMedium,
//               ),
//               SearchBox(
//                 controller: searchController,
//                 onChanged: (_) {
//                   setState(() {});
//                 },
//               ),
//               const SizedBox(height: 20),
//               Expanded(
//                 child: ListView(
//                   shrinkWrap: true,
//                   children: data.countriesList
//                       .where((element) =>
//                           element.name.toUpperCase().contains(searchController.text.toUpperCase()))
//                       .map((e) => GestureDetector(
//                             behavior: HitTestBehavior.opaque,
//                             onTap: () {
//                               context.router.pop(e);
//                             },
//                             child: Padding(
//                               padding: const EdgeInsets.symmetric(vertical: 10),
//                               child: Text(
//                                 e.name,
//                                 style: Theme.of(context).textTheme.displayMedium,
//                               ),
//                             ),
//                           ))
//                       .toList(),
//                 ),
//               )
//             ],
//           ),
//         );
//       }),
//     );
//   }
// }
