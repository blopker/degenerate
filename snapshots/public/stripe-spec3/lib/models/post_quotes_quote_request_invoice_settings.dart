// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_quotes_quote_request_invoice_settings_issuer.dart';/// All invoices will be billed using the specified settings.
final class PostQuotesQuoteRequestInvoiceSettings {const PostQuotesQuoteRequestInvoiceSettings({this.daysUntilDue, this.issuer, });

factory PostQuotesQuoteRequestInvoiceSettings.fromJson(Map<String, dynamic> json) { return PostQuotesQuoteRequestInvoiceSettings(
  daysUntilDue: json['days_until_due'] != null ? (json['days_until_due'] as num).toInt() : null,
  issuer: json['issuer'] != null ? PostQuotesQuoteRequestInvoiceSettingsIssuer.fromJson(json['issuer'] as Map<String, dynamic>) : null,
); }

final int? daysUntilDue;

final PostQuotesQuoteRequestInvoiceSettingsIssuer? issuer;

Map<String, dynamic> toJson() { return {
  'days_until_due': ?daysUntilDue,
  if (issuer != null) 'issuer': issuer?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'days_until_due', 'issuer'}.contains(key)); } 
PostQuotesQuoteRequestInvoiceSettings copyWith({int Function()? daysUntilDue, PostQuotesQuoteRequestInvoiceSettingsIssuer Function()? issuer, }) { return PostQuotesQuoteRequestInvoiceSettings(
  daysUntilDue: daysUntilDue != null ? daysUntilDue() : this.daysUntilDue,
  issuer: issuer != null ? issuer() : this.issuer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostQuotesQuoteRequestInvoiceSettings &&
          daysUntilDue == other.daysUntilDue &&
          issuer == other.issuer; } 
@override int get hashCode { return Object.hash(daysUntilDue, issuer); } 
@override String toString() { return 'PostQuotesQuoteRequestInvoiceSettings(daysUntilDue: $daysUntilDue, issuer: $issuer)'; } 
 }
