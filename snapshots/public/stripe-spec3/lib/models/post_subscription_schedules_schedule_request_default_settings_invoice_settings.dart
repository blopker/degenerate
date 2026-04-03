// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_subscription_schedules_schedule_request_default_settings_invoice_settings_account_tax_ids.dart';import 'post_subscription_schedules_schedule_request_default_settings_invoice_settings_issuer.dart';@immutable final class PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettings {const PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettings({this.accountTaxIds, this.daysUntilDue, this.issuer, });

factory PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettings.fromJson(Map<String, dynamic> json) { return PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettings(
  accountTaxIds: json['account_tax_ids'] != null ? OneOf2.parse(json['account_tax_ids'], fromA: (v) => (v as List<dynamic>).map((e) => e as String).toList(), fromB: (v) => PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2.fromJson(v as String),) : null,
  daysUntilDue: json['days_until_due'] != null ? (json['days_until_due'] as num).toInt() : null,
  issuer: json['issuer'] != null ? PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsIssuer.fromJson(json['issuer'] as Map<String, dynamic>) : null,
); }

final PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIds? accountTaxIds;

final int? daysUntilDue;

final PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsIssuer? issuer;

Map<String, dynamic> toJson() { return {
  if (accountTaxIds != null) 'account_tax_ids': accountTaxIds?.toJson(),
  'days_until_due': ?daysUntilDue,
  if (issuer != null) 'issuer': issuer?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_tax_ids', 'days_until_due', 'issuer'}.contains(key)); } 
PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettings copyWith({PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIds Function()? accountTaxIds, int Function()? daysUntilDue, PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsIssuer Function()? issuer, }) { return PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettings(
  accountTaxIds: accountTaxIds != null ? accountTaxIds() : this.accountTaxIds,
  daysUntilDue: daysUntilDue != null ? daysUntilDue() : this.daysUntilDue,
  issuer: issuer != null ? issuer() : this.issuer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettings &&
          accountTaxIds == other.accountTaxIds &&
          daysUntilDue == other.daysUntilDue &&
          issuer == other.issuer; } 
@override int get hashCode { return Object.hash(accountTaxIds, daysUntilDue, issuer); } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettings(accountTaxIds: $accountTaxIds, daysUntilDue: $daysUntilDue, issuer: $issuer)'; } 
 }
