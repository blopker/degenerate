// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_method_configurations_request_naver_pay_display_preference.dart';/// Naver Pay is a popular local wallet available in South Korea.
@immutable final class PostPaymentMethodConfigurationsRequestNaverPay {const PostPaymentMethodConfigurationsRequestNaverPay({this.displayPreference});

factory PostPaymentMethodConfigurationsRequestNaverPay.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestNaverPay(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsRequestNaverPayDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsRequestNaverPayDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestNaverPay copyWith({PostPaymentMethodConfigurationsRequestNaverPayDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsRequestNaverPay(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestNaverPay &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestNaverPay(displayPreference: $displayPreference)'; } 
 }
