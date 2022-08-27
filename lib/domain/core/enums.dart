import 'package:flutter/cupertino.dart';
import 'package:ddd_sample/presentation/core/colors.dart';

import '../../presentation/core/strings.dart';

enum Gender { male, female, other }

enum PaymentOption { lipaLater, mPesa, flutterWave, payPal }

enum PriceOrder { ascending, descending, none }

enum OrderStatus { delivered, pending, dispatched, placed, processing }

enum ApplicationStatus { pending, applied, hired, accepted, declined } //accepted = hired

enum SocialMedeaPlatform { facebook, instagram, whatsapp, tiktok, youtube, twitter }

enum ConnectionStatus { Connected, reConnect, Connect }

enum ConnectionPlatform { Facebook, Instagram, WhatsApp, Youtube, Twitter }

String paymentString(PaymentOption paymentOption) {
  switch (paymentOption) {
    case PaymentOption.lipaLater:
      return 'Lipalater';
    case PaymentOption.mPesa:
      return 'MPesa';
    case PaymentOption.flutterWave:
      return 'Flutterwave';
    case PaymentOption.payPal:
      return 'Paypal';
  }
}

String priceOrderString(PriceOrder order) {
  switch (order) {
    case PriceOrder.ascending:
      return 'ASC';
    case PriceOrder.descending:
      return 'DESC';
    case PriceOrder.none:
      return '';
  }
}

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

String orderStatusText(OrderStatus order) {
  switch (order) {
    case OrderStatus.delivered:
      return AppStrings.delivered;
    case OrderStatus.processing:
      return AppStrings.processing;
    case OrderStatus.pending:
      return AppStrings.pending;
    case OrderStatus.dispatched:
      return AppStrings.processing;
    case OrderStatus.placed:
      return AppStrings.processing;
  }
}

String applicationStatusText(ApplicationStatus status) {
  switch (status) {
    case ApplicationStatus.pending:
      return AppStrings.pending;

    case ApplicationStatus.applied:
      return AppStrings.applied;
    case ApplicationStatus.hired:
      return AppStrings.hired;
    case ApplicationStatus.accepted:
      return AppStrings.accepted;

    case ApplicationStatus.declined:
      return AppStrings.declined;
  }
}

Color orderStatusBackgroundColor(OrderStatus order) {
  switch (order) {
    case OrderStatus.delivered:
      return AppColors.success;
    case OrderStatus.pending:
      return AppColors.lightYellow;
    case OrderStatus.dispatched:
      return AppColors.lightBlue;
    case OrderStatus.processing:
      return AppColors.lightBlue;
    case OrderStatus.placed:
      return AppColors.lightBlue;
  }
}

Color applicationStatusBackgroundColor(ApplicationStatus applicationStatus) {
  switch (applicationStatus) {
    case ApplicationStatus.pending:
      return AppColors.lightYellow;

    case ApplicationStatus.applied:
      return AppColors.lightBlue;

    case ApplicationStatus.hired:
      return AppColors.success;
    case ApplicationStatus.accepted:
      return AppColors.success;
    case ApplicationStatus.declined:
      return AppColors.lightRed;
  }
}

Color applicationStatusTextColor(ApplicationStatus applicationStatus) {
  switch (applicationStatus) {
    case ApplicationStatus.pending:
      return AppColors.redText;

    case ApplicationStatus.applied:
      return AppColors.blueText;

    case ApplicationStatus.hired:
      return AppColors.successText;
    case ApplicationStatus.accepted:
      return AppColors.successText;

    case ApplicationStatus.declined:
      return AppColors.darkRedText;
  }
}

Color orderStatusTextColor(OrderStatus order) {
  switch (order) {
    case OrderStatus.delivered:
      return AppColors.successText;
    case OrderStatus.pending:
      return AppColors.redText;
    case OrderStatus.dispatched:
      return AppColors.blueText;
    case OrderStatus.processing:
      return AppColors.blueText;
    case OrderStatus.placed:
      return AppColors.blueText;
  }
}

int orderStatusStep(OrderStatus order) {
  switch (order) {
    case OrderStatus.pending:
      return 1;
    case OrderStatus.placed:
      return 2;
    case OrderStatus.processing:
      return 3;
    case OrderStatus.dispatched:
      return 4;
    case OrderStatus.delivered:
      return 5;
  }
}

final applicationValues = EnumValues({
  'Pending': ApplicationStatus.pending,
  'Applied': ApplicationStatus.applied,
  'Hired': ApplicationStatus.hired,
  'Accepted': ApplicationStatus.accepted,
  'Declined': ApplicationStatus.declined,
});
final orderStatusValues = EnumValues({
  'Pending': OrderStatus.pending,
  'Processing': OrderStatus.processing,
  'Placed': OrderStatus.placed,
  'Dispatched': OrderStatus.dispatched,
  'Delivered': OrderStatus.delivered,
});
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

int checkConnectionStatus(String status) {
  if (ConnectionStatus.reConnect.name == status)
    return 2;
  else if (ConnectionStatus.Connected.name == status)
    return 1;
  else
    return 0;
}
