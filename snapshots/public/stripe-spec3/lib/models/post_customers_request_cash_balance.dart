// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_customers_request_cash_balance_settings.dart';/// Balance information and default balance settings for this customer.
final class PostCustomersRequestCashBalance {const PostCustomersRequestCashBalance({this.settings});

factory PostCustomersRequestCashBalance.fromJson(Map<String, dynamic> json) { return PostCustomersRequestCashBalance(
  settings: json['settings'] != null ? PostCustomersRequestCashBalanceSettings.fromJson(json['settings'] as Map<String, dynamic>) : null,
); }

final PostCustomersRequestCashBalanceSettings? settings;

Map<String, dynamic> toJson() { return {
  if (settings != null) 'settings': settings?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'settings'}.contains(key)); } 
PostCustomersRequestCashBalance copyWith({PostCustomersRequestCashBalanceSettings Function()? settings}) { return PostCustomersRequestCashBalance(
  settings: settings != null ? settings() : this.settings,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCustomersRequestCashBalance &&
          settings == other.settings; } 
@override int get hashCode { return settings.hashCode; } 
@override String toString() { return 'PostCustomersRequestCashBalance(settings: $settings)'; } 
 }
