// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_create_preview_request_schedule_details_phases_invoice_settings_account_tax_ids.dart';import 'post_invoices_create_preview_request_schedule_details_phases_invoice_settings_issuer.dart';final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettings {const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettings({this.accountTaxIds, this.daysUntilDue, this.issuer, });

factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettings.fromJson(Map<String, dynamic> json) { return PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettings(
  accountTaxIds: json['account_tax_ids'] != null ? OneOf2.parse(json['account_tax_ids'], fromA: (v) => (v as List<dynamic>).map((e) => e as String).toList(), fromB: (v) => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIdsVariant2.fromJson(v as String),) : null,
  daysUntilDue: json['days_until_due'] != null ? (json['days_until_due'] as num).toInt() : null,
  issuer: json['issuer'] != null ? PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsIssuer.fromJson(json['issuer'] as Map<String, dynamic>) : null,
); }

final PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIds? accountTaxIds;

final int? daysUntilDue;

final PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsIssuer? issuer;

Map<String, dynamic> toJson() { return {
  if (accountTaxIds != null) 'account_tax_ids': accountTaxIds?.toJson(),
  'days_until_due': ?daysUntilDue,
  if (issuer != null) 'issuer': issuer?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_tax_ids', 'days_until_due', 'issuer'}.contains(key)); } 
PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettings copyWith({PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIds Function()? accountTaxIds, int Function()? daysUntilDue, PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsIssuer Function()? issuer, }) { return PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettings(
  accountTaxIds: accountTaxIds != null ? accountTaxIds() : this.accountTaxIds,
  daysUntilDue: daysUntilDue != null ? daysUntilDue() : this.daysUntilDue,
  issuer: issuer != null ? issuer() : this.issuer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettings &&
          accountTaxIds == other.accountTaxIds &&
          daysUntilDue == other.daysUntilDue &&
          issuer == other.issuer; } 
@override int get hashCode { return Object.hash(accountTaxIds, daysUntilDue, issuer); } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettings(accountTaxIds: $accountTaxIds, daysUntilDue: $daysUntilDue, issuer: $issuer)'; } 
 }
