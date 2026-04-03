// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_method_configurations_configuration_request_naver_pay_display_preference.dart';/// Naver Pay is a popular local wallet available in South Korea.
@immutable final class PostPaymentMethodConfigurationsConfigurationRequestNaverPay {const PostPaymentMethodConfigurationsConfigurationRequestNaverPay({this.displayPreference});

factory PostPaymentMethodConfigurationsConfigurationRequestNaverPay.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestNaverPay(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestNaverPayDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestNaverPayDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestNaverPay copyWith({PostPaymentMethodConfigurationsConfigurationRequestNaverPayDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsConfigurationRequestNaverPay(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestNaverPay &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestNaverPay(displayPreference: $displayPreference)'; } 
 }
