// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_method_configurations_configuration_request_cashapp_display_preference.dart';/// Cash App is a popular consumer app in the US that allows customers to bank, invest, send, and receive money using their digital wallet. Check this [page](https://docs.stripe.com/payments/cash-app-pay) for more details.
@immutable final class PostPaymentMethodConfigurationsConfigurationRequestCashapp {const PostPaymentMethodConfigurationsConfigurationRequestCashapp({this.displayPreference});

factory PostPaymentMethodConfigurationsConfigurationRequestCashapp.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestCashapp(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestCashappDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestCashappDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestCashapp copyWith({PostPaymentMethodConfigurationsConfigurationRequestCashappDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsConfigurationRequestCashapp(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestCashapp &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestCashapp(displayPreference: $displayPreference)'; } 
 }
