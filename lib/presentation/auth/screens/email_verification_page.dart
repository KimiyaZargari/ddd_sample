import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ddd_sample/presentation/auth/notifiers/providers.dart';
import 'package:ddd_sample/presentation/core/strings.dart';
import 'package:ddd_sample/presentation/core/widgets/app_button.dart';
import 'package:ddd_sample/presentation/core/widgets/app_text_button.dart';
import 'package:ddd_sample/presentation/core/widgets/input_field.dart';
import 'package:ddd_sample/presentation/core/widgets/page_base.dart';

import '../../core/widgets/default_app_bar.dart';
import '../notifiers/email_verification_notifier.dart';

class EmailVerificationPage extends ConsumerWidget {
  final bool isBusiness;
  final String email;

  const EmailVerificationPage(
      {required this.email, this.isBusiness = true, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final state = ref.watch(emailVerificationProvider(email));
    final notifier = ref.watch(emailVerificationProvider(email).notifier);
    return PageBase(
      appBar: DefaultAppBar(
        title: isBusiness
            ? AppStrings.businessAccountSetup
            : AppStrings.influencerAccountSetup,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        child: Form(
          key: notifier.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 24),
                child: Text(
                  'Please enter the OTP received on E-mail to verify your Email Address.',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
              Text(
                'Enter OTP',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 6,
              ),
              AppInputField(
                onSaved: (_) {
                  notifier.otp = _!;
                },
                suffix: GestureDetector(
                  child: Text(
                    'Resend OTP',
                    style: Theme.of(context).textTheme.labelMedium,
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    notifier.resendOTP();
                  },
                ),
              ),
              if (state is EmailVerificationError)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    AppStrings.invalidOTP,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ),
              const Expanded(child: SizedBox()),
              AppButton(
                  onPressed: () {
                    if (notifier.formKey.currentState!.validate()) {
                      notifier.formKey.currentState!.save();
                      notifier.sendOTP(context, isBusiness, ref);
                    }
                  },
                  loading: state is EmailVerificationLoading,
                  text: AppStrings.submit),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
