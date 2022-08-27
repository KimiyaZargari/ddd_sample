import 'package:auto_route/auto_route.dart';
import 'package:ddd_sample/infrastructure/core/local_storage.dart';
import 'package:flutter/material.dart';
import 'package:ddd_sample/domain/auth/influencer_login_response_model.dart';
import 'package:ddd_sample/presentation/core/images.dart';
import 'package:ddd_sample/presentation/core/strings.dart';
import 'package:ddd_sample/presentation/core/widgets/app_button.dart';
import 'package:ddd_sample/presentation/core/widgets/page_base.dart';
import 'package:ddd_sample/presentation/routes/router.gr.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/widgets/default_app_bar.dart';

class InfluencerWelcomePage extends StatelessWidget {
  const InfluencerWelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageBase(
      appBar: const DefaultAppBar(
        title: AppStrings.welcome,
        hasLeading: false,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Expanded(flex: 6, child: SizedBox()),
            Image.asset(
              AppImages.confimation,
              width: 91,
              height: 91,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 10),
              child: Text(
                AppStrings.welcome,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .displayLarge
                    ?.copyWith(fontSize: 20),
              ),
            ),
            Text(
              'Create your eShop to start earning.',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const Expanded(flex: 11, child: SizedBox()),
            Consumer(builder: (context, ref, _) {
              return AppButton(
                onPressed: () async {
                  ref.read(localStorageProvider).clear();
                  context.router.popUntilRoot();
                  await context.router.replace(LoginRoute());
                  //  context.router.popAndPush(const InfluencerDashboardRoute());
                },
                text: AppStrings.continueString,
              );
            }),
            const SizedBox(
              height: 22,
            )
          ],
        ),
      ),
    );
  }
}
