// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_treasury_financial_accounts_financial_account_close_request_forwarding_settings.dart';final class PostTreasuryFinancialAccountsFinancialAccountCloseRequest {const PostTreasuryFinancialAccountsFinancialAccountCloseRequest({this.expand, this.forwardingSettings, });

factory PostTreasuryFinancialAccountsFinancialAccountCloseRequest.fromJson(Map<String, dynamic> json) { return PostTreasuryFinancialAccountsFinancialAccountCloseRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  forwardingSettings: json['forwarding_settings'] != null ? PostTreasuryFinancialAccountsFinancialAccountCloseRequestForwardingSettings.fromJson(json['forwarding_settings'] as Map<String, dynamic>) : null,
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// A different bank account where funds can be deposited/debited in order to get the closing FA's balance to $0
final PostTreasuryFinancialAccountsFinancialAccountCloseRequestForwardingSettings? forwardingSettings;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
  if (forwardingSettings != null) 'forwarding_settings': forwardingSettings?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'expand', 'forwarding_settings'}.contains(key)); } 
PostTreasuryFinancialAccountsFinancialAccountCloseRequest copyWith({List<String> Function()? expand, PostTreasuryFinancialAccountsFinancialAccountCloseRequestForwardingSettings Function()? forwardingSettings, }) { return PostTreasuryFinancialAccountsFinancialAccountCloseRequest(
  expand: expand != null ? expand() : this.expand,
  forwardingSettings: forwardingSettings != null ? forwardingSettings() : this.forwardingSettings,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryFinancialAccountsFinancialAccountCloseRequest &&
          listEquals(expand, other.expand) &&
          forwardingSettings == other.forwardingSettings; } 
@override int get hashCode { return Object.hash(Object.hashAll(expand ?? const []), forwardingSettings); } 
@override String toString() { return 'PostTreasuryFinancialAccountsFinancialAccountCloseRequest(expand: $expand, forwardingSettings: $forwardingSettings)'; } 
 }
