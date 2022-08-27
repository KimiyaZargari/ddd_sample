import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ddd_sample/domain/auth/validators.dart';
import 'package:ddd_sample/presentation/auth/notifiers/create_account_notifier.dart';
import 'package:ddd_sample/presentation/auth/notifiers/providers.dart';
import 'package:ddd_sample/presentation/core/strings.dart';
import 'package:ddd_sample/presentation/core/vectors.dart';
import 'package:ddd_sample/presentation/core/widgets/app_button.dart';
import 'package:ddd_sample/presentation/core/widgets/app_text_button.dart';
import 'package:ddd_sample/presentation/core/widgets/input_field.dart';
import 'package:ddd_sample/presentation/core/widgets/page_base.dart';

class CreateAccountPage extends StatelessWidget {
  final bool isBusiness;

  const CreateAccountPage(this.isBusiness, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).primaryColorDark,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark,
        ));
        return Future(() => true);
      },
      child: PageBase(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(52),
          child: IconButton(
            padding: const EdgeInsets.only(left: 20, top: 30),
            alignment: Alignment.bottomLeft,
            icon: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(AppVectors.back),
                Text(
                  AppStrings.back,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],

              // backgroundColor: Colors.transparent,
              // elevation: 0,
            ),
            onPressed: () {
              context.router.pop();
            },
          ),
        ),
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
                    final state =
                        ref.watch(createAccountNotifierProvider(isBusiness));
                    final notifier = ref.read(
                        createAccountNotifierProvider(isBusiness).notifier);

                    return Form(
                      key: notifier.formKey,
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
                            validator: validatePassword,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 15,
                              bottom: 6,
                            ),
                            child: Text(
                              AppStrings.referralCode,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                          AppInputField(
                            onSaved: (val) {
                              if (val != null && val.trim().isNotEmpty) {
                                notifier.referralCode = val.trim();
                              } else {
                                notifier.referralCode = null;
                              }
                            },
                            hint: 'Optional',
                            isLast: true,
                          ),
                          const SizedBox(
                            height: 36,
                          ),
                          AppButton(
                            onPressed: () async {
                              if (notifier.formKey.currentState!.validate()) {
                                notifier.formKey.currentState?.save();
                                await notifier.checkEmail(context);
                              }
                            },
                            loading: state is CreateAccountLoading,
                            text: AppStrings.createAccount,
                          )
                        ],
                      ),
                    );
                  }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      AppTextButton(
                          onPressed: () {
                            context.router.popUntilRoot();
                          },
                          text: AppStrings.login)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
