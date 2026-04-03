// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_invoice_request_automatic_tax_liability.dart';/// Settings for automatic tax lookup for this invoice.
@immutable final class PostInvoicesInvoiceRequestAutomaticTax {const PostInvoicesInvoiceRequestAutomaticTax({required this.enabled, this.liability, });

factory PostInvoicesInvoiceRequestAutomaticTax.fromJson(Map<String, dynamic> json) { return PostInvoicesInvoiceRequestAutomaticTax(
  enabled: json['enabled'] as bool,
  liability: json['liability'] != null ? PostInvoicesInvoiceRequestAutomaticTaxLiability.fromJson(json['liability'] as Map<String, dynamic>) : null,
); }

final bool enabled;

final PostInvoicesInvoiceRequestAutomaticTaxLiability? liability;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (liability != null) 'liability': liability?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostInvoicesInvoiceRequestAutomaticTax copyWith({bool? enabled, PostInvoicesInvoiceRequestAutomaticTaxLiability Function()? liability, }) { return PostInvoicesInvoiceRequestAutomaticTax(
  enabled: enabled ?? this.enabled,
  liability: liability != null ? liability() : this.liability,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesInvoiceRequestAutomaticTax &&
          enabled == other.enabled &&
          liability == other.liability; } 
@override int get hashCode { return Object.hash(enabled, liability); } 
@override String toString() { return 'PostInvoicesInvoiceRequestAutomaticTax(enabled: $enabled, liability: $liability)'; } 
 }
