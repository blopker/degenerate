// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_customers_customer_subscriptions_request_invoice_settings_account_tax_ids.dart';import 'post_customers_customer_subscriptions_request_invoice_settings_issuer.dart';/// All invoices will be billed using the specified settings.
final class PostCustomersCustomerSubscriptionsRequestInvoiceSettings {const PostCustomersCustomerSubscriptionsRequestInvoiceSettings({this.accountTaxIds, this.issuer, });

factory PostCustomersCustomerSubscriptionsRequestInvoiceSettings.fromJson(Map<String, dynamic> json) { return PostCustomersCustomerSubscriptionsRequestInvoiceSettings(
  accountTaxIds: json['account_tax_ids'] != null ? OneOf2.parse(json['account_tax_ids'], fromA: (v) => (v as List<dynamic>).map((e) => e as String).toList(), fromB: (v) => PostCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2.fromJson(v as String),) : null,
  issuer: json['issuer'] != null ? PostCustomersCustomerSubscriptionsRequestInvoiceSettingsIssuer.fromJson(json['issuer'] as Map<String, dynamic>) : null,
); }

final PostCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIds? accountTaxIds;

final PostCustomersCustomerSubscriptionsRequestInvoiceSettingsIssuer? issuer;

Map<String, dynamic> toJson() { return {
  if (accountTaxIds != null) 'account_tax_ids': accountTaxIds?.toJson(),
  if (issuer != null) 'issuer': issuer?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_tax_ids', 'issuer'}.contains(key)); } 
PostCustomersCustomerSubscriptionsRequestInvoiceSettings copyWith({PostCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIds Function()? accountTaxIds, PostCustomersCustomerSubscriptionsRequestInvoiceSettingsIssuer Function()? issuer, }) { return PostCustomersCustomerSubscriptionsRequestInvoiceSettings(
  accountTaxIds: accountTaxIds != null ? accountTaxIds() : this.accountTaxIds,
  issuer: issuer != null ? issuer() : this.issuer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsRequestInvoiceSettings &&
          accountTaxIds == other.accountTaxIds &&
          issuer == other.issuer; } 
@override int get hashCode { return Object.hash(accountTaxIds, issuer); } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsRequestInvoiceSettings(accountTaxIds: $accountTaxIds, issuer: $issuer)'; } 
 }
