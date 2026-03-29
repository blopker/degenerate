// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1Tax {const PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1Tax({required this.totalTaxAmount});

factory PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1Tax.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1Tax(
  totalTaxAmount: (json['total_tax_amount'] as num).toInt(),
); }

final int totalTaxAmount;

Map<String, dynamic> toJson() { return {
  'total_tax_amount': totalTaxAmount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('total_tax_amount') && json['total_tax_amount'] is num; } 
PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1Tax copyWith({int? totalTaxAmount}) { return PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1Tax(
  totalTaxAmount: totalTaxAmount ?? this.totalTaxAmount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1Tax &&
          totalTaxAmount == other.totalTaxAmount; } 
@override int get hashCode { return totalTaxAmount.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1Tax(totalTaxAmount: $totalTaxAmount)'; } 
 }
