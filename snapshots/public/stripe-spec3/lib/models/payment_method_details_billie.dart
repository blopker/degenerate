// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsBillie {const PaymentMethodDetailsBillie({this.transactionId});

factory PaymentMethodDetailsBillie.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsBillie(
  transactionId: json['transaction_id'] as String?,
); }

/// The Billie transaction ID associated with this payment.
final String? transactionId;

Map<String, dynamic> toJson() { return {
  'transaction_id': ?transactionId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'transaction_id'}.contains(key)); } 
PaymentMethodDetailsBillie copyWith({String? Function()? transactionId}) { return PaymentMethodDetailsBillie(
  transactionId: transactionId != null ? transactionId() : this.transactionId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsBillie &&
          transactionId == other.transactionId; } 
@override int get hashCode { return transactionId.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsBillie(transactionId: $transactionId)'; } 
 }
