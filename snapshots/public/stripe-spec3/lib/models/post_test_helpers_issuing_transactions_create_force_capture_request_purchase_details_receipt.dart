// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsReceipt {const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsReceipt({this.description, this.quantity, this.total, this.unitCost, });

factory PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsReceipt.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsReceipt(
  description: json['description'] as String?,
  quantity: json['quantity'] as String?,
  total: json['total'] != null ? (json['total'] as num).toInt() : null,
  unitCost: json['unit_cost'] != null ? (json['unit_cost'] as num).toInt() : null,
); }

final String? description;

final String? quantity;

final int? total;

final int? unitCost;

Map<String, dynamic> toJson() { return {
  'description': ?description,
  'quantity': ?quantity,
  'total': ?total,
  'unit_cost': ?unitCost,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'description', 'quantity', 'total', 'unit_cost'}.contains(key)); } 
PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsReceipt copyWith({String Function()? description, String Function()? quantity, int Function()? total, int Function()? unitCost, }) { return PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsReceipt(
  description: description != null ? description() : this.description,
  quantity: quantity != null ? quantity() : this.quantity,
  total: total != null ? total() : this.total,
  unitCost: unitCost != null ? unitCost() : this.unitCost,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsReceipt &&
          description == other.description &&
          quantity == other.quantity &&
          total == other.total &&
          unitCost == other.unitCost; } 
@override int get hashCode { return Object.hash(description, quantity, total, unitCost); } 
@override String toString() { return 'PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsReceipt(description: $description, quantity: $quantity, total: $total, unitCost: $unitCost)'; } 
 }
