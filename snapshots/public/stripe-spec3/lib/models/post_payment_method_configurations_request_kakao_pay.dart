// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_method_configurations_request_kakao_pay_display_preference.dart';/// Kakao Pay is a popular local wallet available in South Korea.
@immutable final class PostPaymentMethodConfigurationsRequestKakaoPay {const PostPaymentMethodConfigurationsRequestKakaoPay({this.displayPreference});

factory PostPaymentMethodConfigurationsRequestKakaoPay.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestKakaoPay(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsRequestKakaoPayDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsRequestKakaoPayDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestKakaoPay copyWith({PostPaymentMethodConfigurationsRequestKakaoPayDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsRequestKakaoPay(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestKakaoPay &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestKakaoPay(displayPreference: $displayPreference)'; } 
 }
