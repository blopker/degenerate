// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTreasuryFinancialAccountsFinancialAccountCloseRequestForwardingSettingsType {const PostTreasuryFinancialAccountsFinancialAccountCloseRequestForwardingSettingsType._(this.value);

factory PostTreasuryFinancialAccountsFinancialAccountCloseRequestForwardingSettingsType.fromJson(String json) { return switch (json) {
  'financial_account' => financialAccount,
  'payment_method' => paymentMethod,
  _ => PostTreasuryFinancialAccountsFinancialAccountCloseRequestForwardingSettingsType._(json),
}; }

static const PostTreasuryFinancialAccountsFinancialAccountCloseRequestForwardingSettingsType financialAccount = PostTreasuryFinancialAccountsFinancialAccountCloseRequestForwardingSettingsType._('financial_account');

static const PostTreasuryFinancialAccountsFinancialAccountCloseRequestForwardingSettingsType paymentMethod = PostTreasuryFinancialAccountsFinancialAccountCloseRequestForwardingSettingsType._('payment_method');

static const List<PostTreasuryFinancialAccountsFinancialAccountCloseRequestForwardingSettingsType> values = [financialAccount, paymentMethod];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTreasuryFinancialAccountsFinancialAccountCloseRequestForwardingSettingsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTreasuryFinancialAccountsFinancialAccountCloseRequestForwardingSettingsType($value)'; } 
 }
/// A different bank account where funds can be deposited/debited in order to get the closing FA's balance to $0
@immutable final class PostTreasuryFinancialAccountsFinancialAccountCloseRequestForwardingSettings {const PostTreasuryFinancialAccountsFinancialAccountCloseRequestForwardingSettings({required this.type, this.financialAccount, this.paymentMethod, });

factory PostTreasuryFinancialAccountsFinancialAccountCloseRequestForwardingSettings.fromJson(Map<String, dynamic> json) { return PostTreasuryFinancialAccountsFinancialAccountCloseRequestForwardingSettings(
  financialAccount: json['financial_account'] as String?,
  paymentMethod: json['payment_method'] as String?,
  type: PostTreasuryFinancialAccountsFinancialAccountCloseRequestForwardingSettingsType.fromJson(json['type'] as String),
); }

final String? financialAccount;

final String? paymentMethod;

final PostTreasuryFinancialAccountsFinancialAccountCloseRequestForwardingSettingsType type;

Map<String, dynamic> toJson() { return {
  'financial_account': ?financialAccount,
  'payment_method': ?paymentMethod,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTreasuryFinancialAccountsFinancialAccountCloseRequestForwardingSettings copyWith({String Function()? financialAccount, String Function()? paymentMethod, PostTreasuryFinancialAccountsFinancialAccountCloseRequestForwardingSettingsType? type, }) { return PostTreasuryFinancialAccountsFinancialAccountCloseRequestForwardingSettings(
  financialAccount: financialAccount != null ? financialAccount() : this.financialAccount,
  paymentMethod: paymentMethod != null ? paymentMethod() : this.paymentMethod,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryFinancialAccountsFinancialAccountCloseRequestForwardingSettings &&
          financialAccount == other.financialAccount &&
          paymentMethod == other.paymentMethod &&
          type == other.type; } 
@override int get hashCode { return Object.hash(financialAccount, paymentMethod, type); } 
@override String toString() { return 'PostTreasuryFinancialAccountsFinancialAccountCloseRequestForwardingSettings(financialAccount: $financialAccount, paymentMethod: $paymentMethod, type: $type)'; } 
 }
