// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class BillingBillResourceInvoicingParentsInvoiceQuoteParent {const BillingBillResourceInvoicingParentsInvoiceQuoteParent({required this.quote});

factory BillingBillResourceInvoicingParentsInvoiceQuoteParent.fromJson(Map<String, dynamic> json) { return BillingBillResourceInvoicingParentsInvoiceQuoteParent(
  quote: json['quote'] as String,
); }

/// The quote that generated this invoice
final String quote;

Map<String, dynamic> toJson() { return {
  'quote': quote,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('quote') && json['quote'] is String; } 
BillingBillResourceInvoicingParentsInvoiceQuoteParent copyWith({String? quote}) { return BillingBillResourceInvoicingParentsInvoiceQuoteParent(
  quote: quote ?? this.quote,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingBillResourceInvoicingParentsInvoiceQuoteParent &&
          quote == other.quote; } 
@override int get hashCode { return quote.hashCode; } 
@override String toString() { return 'BillingBillResourceInvoicingParentsInvoiceQuoteParent(quote: $quote)'; } 
 }
