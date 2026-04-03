// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_method_configurations_configuration_request_jcb_display_preference.dart';/// JCB is a credit card company based in Japan. JCB is currently available in Japan to businesses approved by JCB, and available to all businesses in Australia, Canada, Hong Kong, Japan, New Zealand, Singapore, Switzerland, United Kingdom, United States, and all countries in the European Economic Area except Iceland. Check this [page](https://support.stripe.com/questions/accepting-japan-credit-bureau-%28jcb%29-payments) for more details.
@immutable final class PostPaymentMethodConfigurationsConfigurationRequestJcb {const PostPaymentMethodConfigurationsConfigurationRequestJcb({this.displayPreference});

factory PostPaymentMethodConfigurationsConfigurationRequestJcb.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestJcb(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestJcbDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestJcbDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestJcb copyWith({PostPaymentMethodConfigurationsConfigurationRequestJcbDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsConfigurationRequestJcb(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestJcb &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestJcb(displayPreference: $displayPreference)'; } 
 }
