// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_request_automatic_tax_liability.dart';/// Settings for automatic tax lookup for this invoice.
@immutable final class PostInvoicesRequestAutomaticTax {const PostInvoicesRequestAutomaticTax({required this.enabled, this.liability, });

factory PostInvoicesRequestAutomaticTax.fromJson(Map<String, dynamic> json) { return PostInvoicesRequestAutomaticTax(
  enabled: json['enabled'] as bool,
  liability: json['liability'] != null ? PostInvoicesRequestAutomaticTaxLiability.fromJson(json['liability'] as Map<String, dynamic>) : null,
); }

final bool enabled;

final PostInvoicesRequestAutomaticTaxLiability? liability;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (liability != null) 'liability': liability?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostInvoicesRequestAutomaticTax copyWith({bool? enabled, PostInvoicesRequestAutomaticTaxLiability Function()? liability, }) { return PostInvoicesRequestAutomaticTax(
  enabled: enabled ?? this.enabled,
  liability: liability != null ? liability() : this.liability,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesRequestAutomaticTax &&
          enabled == other.enabled &&
          liability == other.liability; } 
@override int get hashCode { return Object.hash(enabled, liability); } 
@override String toString() { return 'PostInvoicesRequestAutomaticTax(enabled: $enabled, liability: $liability)'; } 
 }
