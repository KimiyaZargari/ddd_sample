import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ddd_sample/presentation/core/colors.dart';
import 'package:ddd_sample/presentation/core/images.dart';
import 'package:ddd_sample/presentation/core/strings.dart';
import 'package:ddd_sample/presentation/core/vectors.dart';
import 'package:ddd_sample/presentation/core/widgets/app_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ddd_sample/presentation/core/widgets/page_base.dart';
import 'package:ddd_sample/presentation/routes/router.gr.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageBase(
      systemUiOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).primaryColorDark,
        statusBarIconBrightness: Brightness.light,
        // For Android (dark icons)
        statusBarBrightness: Brightness.dark,
        // For iOS (dark icons)
      ),
      backgroundColor: Theme.of(context).primaryColorDark,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      AppVectors.logo,
                      height: 50,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    SvgPicture.asset(
                      AppVectors.ddd_sample,
                      height: 16,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 30, 40, 10),
                  child: Image.asset(
                    AppImages.signUp,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(22, 20, 22, 30),
            decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(10))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  AppStrings.signUp,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 30),
                  child: Text(
                    'Are you a Business or an Influencer?',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                AppButton(
                    onPressed: () {
                      context.router.push(CreateAccountRoute(isBusiness: true));
                    },
                    text: 'I’m a Business'),
                AppButton(
                  onPressed: () {
                    context.router.push(CreateAccountRoute(isBusiness: false));
                  },
                  text: 'I’m an Influencer',
                  buttonColor: AppColors.primaryColorLight,
                  textColor: AppColors.secondaryPink,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
