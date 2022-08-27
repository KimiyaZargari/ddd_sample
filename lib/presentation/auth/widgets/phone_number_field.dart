import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ddd_sample/presentation/auth/notifiers/providers.dart';
import 'package:ddd_sample/presentation/core/strings.dart';
import 'package:ddd_sample/presentation/core/vectors.dart';

import '../../core/colors.dart';

class PhoneNumberField extends StatelessWidget {
  final TextEditingController phoneNumberController, dialCodeController;

  const PhoneNumberField(
    this.phoneNumberController,
    this.dialCodeController, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        border: Border.all(color: AppColors.grey300, width: 1.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Consumer(builder: (context, ref, _) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () async {
                await showDialog(
                    context: context,
                    builder: (_) {
                      final TextEditingController controller =
                          TextEditingController();
                      return Dialog(
                        insetPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 40),
                        child: StatefulBuilder(builder: (context, setState) {
                          return Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                                color: Theme.of(context).cardColor,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8))),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Select Country',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                    ),
                                    IconButton(
                                        iconSize: 18,
                                        onPressed: () {
                                          context.router.pop();
                                        },
                                        icon: SvgPicture.asset(
                                          AppVectors.exit,
                                          height: 18,
                                        ))
                                  ],
                                ),
                                TextFormField(
                                  controller: controller,
                                  onChanged: (_) {
                                    setState(() {});
                                  },
                                  style: Theme.of(context).textTheme.bodyLarge,
                                  decoration: InputDecoration(
                                    counterText: '',
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 13, 10, 13),
                                      child: SvgPicture.asset(
                                        AppVectors.search,
                                        height: 16,
                                        width: 16,
                                      ),
                                    ),

                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: AppColors.grey300, width: 1.5),
                                      borderRadius: BorderRadius.circular(10),
                                    ),

                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: AppColors.grey300, width: 1.5),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: AppColors.grey300, width: 1.5),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: AppColors.grey300, width: 1.5),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: AppColors.grey300, width: 1.5),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: AppColors.grey300, width: 1.5),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    // _border,
                                    fillColor: Theme.of(context).cardColor,
                                    filled: true,
                                    errorMaxLines: 2,
                                    focusColor:
                                        Theme.of(context).secondaryHeaderColor,
                                    hoverColor:
                                        Theme.of(context).secondaryHeaderColor,
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 14, vertical: 10),
                                    hintText: 'Search',
                                    hintStyle: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'SourceSansPro',
                                        color: AppColors.grey400),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Expanded(
                                  child: ListView(
                                    shrinkWrap: true,
                                    children: AppStrings.countryList
                                        .where((element) =>
                                            element['en_short_name']
                                                .toUpperCase()
                                                .contains(controller.text
                                                    .toUpperCase()) ||
                                            (element['dial_code']
                                                .toLowerCase()
                                                .contains(controller.text
                                                    .toLowerCase())))
                                        .map((e) => Consumer(
                                                builder: (context, ref, _) {
                                              return GestureDetector(
                                                behavior:
                                                    HitTestBehavior.opaque,
                                                onTap: () {
                                                  dialCodeController.text =
                                                      e['dial_code'];

                                                  context.router
                                                      .pop(e['dial_code']);
                                                },
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 10),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .stretch,
                                                    children: [
                                                      Text(
                                                        e['en_short_name'],
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .displayMedium,
                                                      ),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        e['dial_code'],
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .displaySmall,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            }))
                                        .toList(),
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                      );
                    });
              },
              child: Container(
                width: 58,
                alignment: Alignment.center,
                child: TextFormField(
                  controller: dialCodeController,
                  enabled: false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    //contentPadding: EdgeInsets.only(left: 8),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              width: 1.5,
              color: AppColors.grey300,
            ),
            Expanded(
              child: Consumer(builder: (context, ref, _) {
                return TextFormField(
                  controller: phoneNumberController,
                  // onSaved: (val) {
                  //   final notifier =
                  //       ref.read(businessSetupNotifierProvider.notifier);
                  //   final dialCode = ref.read(dialCodeProvider);
                  //   notifier.phoneNumber = dialCode + val!;
                  // },
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                );
              }),
            ),
          ],
        );
      }),
    );
  }
}
