import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ddd_sample/presentation/auth/notifiers/providers.dart';
import 'package:ddd_sample/presentation/auth/notifiers/splash_notifier.dart';
import 'package:ddd_sample/presentation/core/colors.dart';
import 'package:ddd_sample/presentation/core/vectors.dart';
import 'package:ddd_sample/presentation/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final notifier = ref.watch(splashNotifierProvider.notifier);
      final state = ref.watch(splashNotifierProvider);
      if (state is SplashLoading) {
        notifier.loadData(ref);
      }
      ref.listen(splashNotifierProvider, (previous, next) {
        if (next is NotLoggedIn) {
          context.router.replace(LoginRoute());
        } else if (next is BusinessLoggedIn) {
          context.router.replace(BusinessWelcomeRoute());
        } else if (next is InfluencerLoggedIn) {
          context.router.replace(InfluencerWelcomeRoute());
        }
      });
      return Container(
        color: AppColors.primaryColorDark,
        child: SvgPicture.asset(
          AppVectors.logoWithText,
          color: Colors.white,
          width: 128,
          fit: BoxFit.scaleDown,
        ),
      );
    });
  }
}
