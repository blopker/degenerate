// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_item_threshold_reason.dart';/// 
@immutable final class InvoiceThresholdReason {const InvoiceThresholdReason({required this.itemReasons, this.amountGte = const Omittable.absent(), });

factory InvoiceThresholdReason.fromJson(Map<String, dynamic> json) { return InvoiceThresholdReason(
  amountGte: json.containsKey('amount_gte') ? Omittable(json['amount_gte'] != null ? (json['amount_gte'] as num).toInt() : null) : const Omittable.absent(),
  itemReasons: (json['item_reasons'] as List<dynamic>).map((e) => InvoiceItemThresholdReason.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The total invoice amount threshold boundary if it triggered the threshold invoice.
final Omittable<int?> amountGte;

/// Indicates which line items triggered a threshold invoice.
final List<InvoiceItemThresholdReason> itemReasons;

Map<String, dynamic> toJson() { return {
  if (amountGte.isPresent) 'amount_gte': amountGte.value,
  'item_reasons': itemReasons.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('item_reasons'); } 
InvoiceThresholdReason copyWith({Omittable<int?>? amountGte, List<InvoiceItemThresholdReason>? itemReasons, }) { return InvoiceThresholdReason(
  amountGte: amountGte ?? this.amountGte,
  itemReasons: itemReasons ?? this.itemReasons,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoiceThresholdReason &&
          amountGte == other.amountGte &&
          listEquals(itemReasons, other.itemReasons); } 
@override int get hashCode { return Object.hash(amountGte, Object.hashAll(itemReasons)); } 
@override String toString() { return 'InvoiceThresholdReason(amountGte: $amountGte, itemReasons: $itemReasons)'; } 
 }
