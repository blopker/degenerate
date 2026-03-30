// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_quotes_request_invoice_settings_issuer.dart';/// All invoices will be billed using the specified settings.
final class PostQuotesRequestInvoiceSettings {const PostQuotesRequestInvoiceSettings({this.daysUntilDue, this.issuer, });

factory PostQuotesRequestInvoiceSettings.fromJson(Map<String, dynamic> json) { return PostQuotesRequestInvoiceSettings(
  daysUntilDue: json['days_until_due'] != null ? (json['days_until_due'] as num).toInt() : null,
  issuer: json['issuer'] != null ? PostQuotesRequestInvoiceSettingsIssuer.fromJson(json['issuer'] as Map<String, dynamic>) : null,
); }

final int? daysUntilDue;

final PostQuotesRequestInvoiceSettingsIssuer? issuer;

Map<String, dynamic> toJson() { return {
  'days_until_due': ?daysUntilDue,
  if (issuer != null) 'issuer': issuer?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'days_until_due', 'issuer'}.contains(key)); } 
PostQuotesRequestInvoiceSettings copyWith({int Function()? daysUntilDue, PostQuotesRequestInvoiceSettingsIssuer Function()? issuer, }) { return PostQuotesRequestInvoiceSettings(
  daysUntilDue: daysUntilDue != null ? daysUntilDue() : this.daysUntilDue,
  issuer: issuer != null ? issuer() : this.issuer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostQuotesRequestInvoiceSettings &&
          daysUntilDue == other.daysUntilDue &&
          issuer == other.issuer; } 
@override int get hashCode { return Object.hash(daysUntilDue, issuer); } 
@override String toString() { return 'PostQuotesRequestInvoiceSettings(daysUntilDue: $daysUntilDue, issuer: $issuer)'; } 
 }
