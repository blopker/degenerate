// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_subscription_schedules_request_default_settings_invoice_settings_account_tax_ids.dart';import 'post_subscription_schedules_request_default_settings_invoice_settings_issuer.dart';final class PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettings {const PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettings({this.accountTaxIds, this.daysUntilDue, this.issuer, });

factory PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettings.fromJson(Map<String, dynamic> json) { return PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettings(
  accountTaxIds: json['account_tax_ids'] != null ? OneOf2.parse(json['account_tax_ids'], fromA: (v) => (v as List<dynamic>).map((e) => e as String).toList(), fromB: (v) => PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2.fromJson(v as String),) : null,
  daysUntilDue: json['days_until_due'] != null ? (json['days_until_due'] as num).toInt() : null,
  issuer: json['issuer'] != null ? PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsIssuer.fromJson(json['issuer'] as Map<String, dynamic>) : null,
); }

final PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIds? accountTaxIds;

final int? daysUntilDue;

final PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsIssuer? issuer;

Map<String, dynamic> toJson() { return {
  if (accountTaxIds != null) 'account_tax_ids': accountTaxIds?.toJson(),
  'days_until_due': ?daysUntilDue,
  if (issuer != null) 'issuer': issuer?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettings copyWith({PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIds Function()? accountTaxIds, int Function()? daysUntilDue, PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsIssuer Function()? issuer, }) { return PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettings(
  accountTaxIds: accountTaxIds != null ? accountTaxIds() : this.accountTaxIds,
  daysUntilDue: daysUntilDue != null ? daysUntilDue() : this.daysUntilDue,
  issuer: issuer != null ? issuer() : this.issuer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettings &&
          accountTaxIds == other.accountTaxIds &&
          daysUntilDue == other.daysUntilDue &&
          issuer == other.issuer; } 
@override int get hashCode { return Object.hash(accountTaxIds, daysUntilDue, issuer); } 
@override String toString() { return 'PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettings(accountTaxIds: $accountTaxIds, daysUntilDue: $daysUntilDue, issuer: $issuer)'; } 
 }
