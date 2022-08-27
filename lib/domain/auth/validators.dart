import 'package:ddd_sample/presentation/core/strings.dart';

String? validateEmailAddress(String? input) {
  // Maybe not the most robust way of email validation but it's good enough
  print(input?.isEmpty);
  if (input == null || input.isEmpty) {
    return 'Please enter your email address!';
  }
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (!RegExp(emailRegex).hasMatch(input)) {
    return AppStrings.invalidEmailError;
  }
  return null;
}

String? validatePassword(String? input) {
  // You can also add some advanced password checks (uppercase/lowercase, at least 1 number, ...)
  if (input == null || input.isEmpty) {
    return 'Please enter your password!';
  } else if (input.length < 8) {
    return AppStrings.invalidPasswordError;
  }
  return null;
}
