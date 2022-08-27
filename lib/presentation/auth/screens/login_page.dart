import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ddd_sample/domain/auth/validators.dart';
import 'package:ddd_sample/presentation/auth/notifiers/login_notifier.dart';
import 'package:ddd_sample/presentation/auth/notifiers/providers.dart';
import 'package:ddd_sample/presentation/core/strings.dart';
import 'package:ddd_sample/presentation/core/vectors.dart';
import 'package:ddd_sample/presentation/core/widgets/app_button.dart';
import 'package:ddd_sample/presentation/core/widgets/app_text_button.dart';
import 'package:ddd_sample/presentation/core/widgets/input_field.dart';
import 'package:ddd_sample/presentation/core/widgets/page_base.dart';
import 'package:ddd_sample/presentation/routes/router.gr.dart';

class LoginPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageBase(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(38.0),
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          // height: MediaQuery.of(context).size.height -
          //     MediaQuery.of(context).padding.top,
          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppVectors.logoWithText),
                Consumer(builder: (_, ref, __) {
                  final state = ref.watch(loginNotifierProvider);

                  final notifier = ref.watch(loginNotifierProvider.notifier);
                  return Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 30,
                            bottom: 6,
                          ),
                          child: Text(
                            AppStrings.email,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        AppInputField(
                          onSaved: (val) {
                            notifier.email = val!;
                          },
                          textInputType: TextInputType.emailAddress,
                          validator: validateEmailAddress,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            bottom: 6,
                          ),
                          child: Text(
                            AppStrings.password,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        AppInputField(
                          onSaved: (val) {
                            notifier.password = val!;
                          },
                          isPassword: true,
                          isLast: true,
                          validator: validatePassword,
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: AppTextButton(
                                onPressed: () {
                                //  context.router.push(const EnterEmailRoute());
                                },
                                text: 'Forgot Password?')),
                        if (state is LoginError)
                          Padding(
                            padding: const EdgeInsets.only(top: 6, bottom: 12),
                            child: Text(
                              state.message,
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                          )
                        else
                          Container(
                            height: 36,
                          ),
                        AppButton(
                            onPressed: () async {
                              if (formKey.currentState!.validate()) {
                                formKey.currentState?.save();
                                await notifier.login(context, ref);
                              }
                            },
                            loading: state is LoginLoading,
                            text: AppStrings.login),
                      ],
                    ),
                  );
                }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    AppTextButton(
                        onPressed: () {
                          context.router.push(const SignUpRoute());
                        },
                        text: AppStrings.signUp)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
