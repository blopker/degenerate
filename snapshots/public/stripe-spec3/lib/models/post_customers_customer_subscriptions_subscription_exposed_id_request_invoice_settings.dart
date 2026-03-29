// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_customers_customer_subscriptions_subscription_exposed_id_request_invoice_settings_account_tax_ids.dart';import 'post_customers_customer_subscriptions_subscription_exposed_id_request_invoice_settings_issuer.dart';/// All invoices will be billed using the specified settings.
final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettings {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettings({this.accountTaxIds, this.issuer, });

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettings.fromJson(Map<String, dynamic> json) { return PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettings(
  accountTaxIds: json['account_tax_ids'] != null ? OneOf2.parse(json['account_tax_ids'], fromA: (v) => (v as List<dynamic>).map((e) => e as String).toList(), fromB: (v) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIdsVariant2.fromJson(v as String),) : null,
  issuer: json['issuer'] != null ? PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuer.fromJson(json['issuer'] as Map<String, dynamic>) : null,
); }

final PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIds? accountTaxIds;

final PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuer? issuer;

Map<String, dynamic> toJson() { return {
  if (accountTaxIds != null) 'account_tax_ids': accountTaxIds?.toJson(),
  if (issuer != null) 'issuer': issuer?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettings copyWith({PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIds Function()? accountTaxIds, PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuer Function()? issuer, }) { return PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettings(
  accountTaxIds: accountTaxIds != null ? accountTaxIds() : this.accountTaxIds,
  issuer: issuer != null ? issuer() : this.issuer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettings &&
          accountTaxIds == other.accountTaxIds &&
          issuer == other.issuer; } 
@override int get hashCode { return Object.hash(accountTaxIds, issuer); } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettings(accountTaxIds: $accountTaxIds, issuer: $issuer)'; } 
 }
