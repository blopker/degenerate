// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_method_configurations_configuration_request_fr_meal_voucher_conecs_display_preference.dart';/// Meal vouchers in France, or “titres-restaurant”, is a local benefits program commonly offered by employers for their employees to purchase prepared food and beverages on working days. Check this [page](https://docs.stripe.com/payments/meal-vouchers/fr-meal-vouchers) for more details.
final class PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecs {const PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecs({this.displayPreference});

factory PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecs.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecs(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecsDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecsDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecs copyWith({PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecsDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecs(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecs &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecs(displayPreference: $displayPreference)'; } 
 }
