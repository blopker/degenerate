// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_item_threshold_reason.dart';/// 
final class InvoiceThresholdReason {const InvoiceThresholdReason({this.amountGte, required this.itemReasons, });

factory InvoiceThresholdReason.fromJson(Map<String, dynamic> json) { return InvoiceThresholdReason(
  amountGte: json['amount_gte'] != null ? (json['amount_gte'] as num).toInt() : null,
  itemReasons: (json['item_reasons'] as List<dynamic>).map((e) => InvoiceItemThresholdReason.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The total invoice amount threshold boundary if it triggered the threshold invoice.
final int? amountGte;

/// Indicates which line items triggered a threshold invoice.
final List<InvoiceItemThresholdReason> itemReasons;

Map<String, dynamic> toJson() { return {
  'amount_gte': ?amountGte,
  'item_reasons': itemReasons.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('item_reasons'); } 
InvoiceThresholdReason copyWith({int? Function()? amountGte, List<InvoiceItemThresholdReason>? itemReasons, }) { return InvoiceThresholdReason(
  amountGte: amountGte != null ? amountGte() : this.amountGte,
  itemReasons: itemReasons ?? this.itemReasons,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoiceThresholdReason &&
          amountGte == other.amountGte &&
          listEquals(itemReasons, other.itemReasons); } 
@override int get hashCode { return Object.hash(amountGte, Object.hashAll(itemReasons)); } 
@override String toString() { return 'InvoiceThresholdReason(amountGte: $amountGte, itemReasons: $itemReasons)'; } 
 }
