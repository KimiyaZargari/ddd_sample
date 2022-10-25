import 'package:flutter/cupertino.dart';
import 'package:ddd_sample/presentation/core/colors.dart';

import '../../presentation/core/strings.dart';

enum Gender { male, female, other }

String genderText(Gender gender) {
  switch (gender) {
    case Gender.male:
      return 'Male';
    case Gender.female:
      return 'Female';
    case Gender.other:
      return 'Other';
  }
}

final genderValues = EnumValues({
  'male': Gender.male,
  'female': Gender.female,
  'other': Gender.other,
});

enum UserType { influencer, business }

String userTypeText(UserType userType) {
  switch (userType) {
    case UserType.influencer:
      return 'I';
    case UserType.business:
      return 'B';
  }
}

final userTypeValues = EnumValues<UserType>({
  'I': UserType.influencer,
  'B': UserType.business,
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
