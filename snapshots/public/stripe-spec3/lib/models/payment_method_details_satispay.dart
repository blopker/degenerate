// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsSatispay {const PaymentMethodDetailsSatispay({this.transactionId});

factory PaymentMethodDetailsSatispay.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsSatispay(
  transactionId: json['transaction_id'] as String?,
); }

/// The Satispay transaction ID associated with this payment.
final String? transactionId;

Map<String, dynamic> toJson() { return {
  'transaction_id': ?transactionId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'transaction_id'}.contains(key)); } 
PaymentMethodDetailsSatispay copyWith({String? Function()? transactionId}) { return PaymentMethodDetailsSatispay(
  transactionId: transactionId != null ? transactionId() : this.transactionId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsSatispay &&
          transactionId == other.transactionId; } 
@override int get hashCode { return transactionId.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsSatispay(transactionId: $transactionId)'; } 
 }
