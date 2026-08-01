// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsBillie {const PaymentMethodDetailsBillie({this.transactionId = const Omittable.absent()});

factory PaymentMethodDetailsBillie.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsBillie(
  transactionId: json.containsKey('transaction_id') ? Omittable(json['transaction_id'] as String?) : const Omittable.absent(),
); }

/// The Billie transaction ID associated with this payment.
final Omittable<String?> transactionId;

Map<String, dynamic> toJson() { return {
  if (transactionId.isPresent) 'transaction_id': transactionId.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'transaction_id'}.contains(key)); } 
PaymentMethodDetailsBillie copyWith({Omittable<String?>? transactionId}) { return PaymentMethodDetailsBillie(
  transactionId: transactionId ?? this.transactionId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsBillie &&
          transactionId == other.transactionId; } 
@override int get hashCode { return transactionId.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsBillie(transactionId: $transactionId)'; } 
 }
