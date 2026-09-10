// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'alma_installments.dart';/// 
@immutable final class PaymentMethodDetailsAlma {const PaymentMethodDetailsAlma({this.installments, this.transactionId = const Omittable.absent(), });

factory PaymentMethodDetailsAlma.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsAlma(
  installments: json['installments'] != null ? AlmaInstallments.fromJson(json['installments'] as Map<String, dynamic>) : null,
  transactionId: json.containsKey('transaction_id') ? Omittable(json['transaction_id'] as String?) : const Omittable.absent(),
); }

final AlmaInstallments? installments;

/// The Alma transaction ID associated with this payment.
final Omittable<String?> transactionId;

Map<String, dynamic> toJson() { return {
  if (installments != null) 'installments': installments?.toJson(),
  if (transactionId.isPresent) 'transaction_id': transactionId.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'installments', 'transaction_id'}.contains(key)); } 
PaymentMethodDetailsAlma copyWith({AlmaInstallments? Function()? installments, Omittable<String?>? transactionId, }) { return PaymentMethodDetailsAlma(
  installments: installments != null ? installments() : this.installments,
  transactionId: transactionId ?? this.transactionId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsAlma &&
          installments == other.installments &&
          transactionId == other.transactionId; } 
@override int get hashCode { return Object.hash(installments, transactionId); } 
@override String toString() { return 'PaymentMethodDetailsAlma(installments: $installments, transactionId: $transactionId)'; } 
 }
