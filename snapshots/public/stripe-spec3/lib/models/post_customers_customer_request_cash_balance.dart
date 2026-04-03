// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_customers_customer_request_cash_balance_settings.dart';/// Balance information and default balance settings for this customer.
@immutable final class PostCustomersCustomerRequestCashBalance {const PostCustomersCustomerRequestCashBalance({this.settings});

factory PostCustomersCustomerRequestCashBalance.fromJson(Map<String, dynamic> json) { return PostCustomersCustomerRequestCashBalance(
  settings: json['settings'] != null ? PostCustomersCustomerRequestCashBalanceSettings.fromJson(json['settings'] as Map<String, dynamic>) : null,
); }

final PostCustomersCustomerRequestCashBalanceSettings? settings;

Map<String, dynamic> toJson() { return {
  if (settings != null) 'settings': settings?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'settings'}.contains(key)); } 
PostCustomersCustomerRequestCashBalance copyWith({PostCustomersCustomerRequestCashBalanceSettings Function()? settings}) { return PostCustomersCustomerRequestCashBalance(
  settings: settings != null ? settings() : this.settings,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCustomersCustomerRequestCashBalance &&
          settings == other.settings; } 
@override int get hashCode { return settings.hashCode; } 
@override String toString() { return 'PostCustomersCustomerRequestCashBalance(settings: $settings)'; } 
 }
