// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodPayto {const PaymentMethodPayto({this.bsbNumber = const Omittable.absent(), this.last4 = const Omittable.absent(), this.payId = const Omittable.absent(), });

factory PaymentMethodPayto.fromJson(Map<String, dynamic> json) { return PaymentMethodPayto(
  bsbNumber: json.containsKey('bsb_number') ? Omittable(json['bsb_number'] as String?) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
  payId: json.containsKey('pay_id') ? Omittable(json['pay_id'] as String?) : const Omittable.absent(),
); }

/// Bank-State-Branch number of the bank account.
final Omittable<String?> bsbNumber;

/// Last four digits of the bank account number.
final Omittable<String?> last4;

/// The PayID alias for the bank account.
final Omittable<String?> payId;

Map<String, dynamic> toJson() { return {
  if (bsbNumber.isPresent) 'bsb_number': bsbNumber.value,
  if (last4.isPresent) 'last4': last4.value,
  if (payId.isPresent) 'pay_id': payId.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bsb_number', 'last4', 'pay_id'}.contains(key)); } 
PaymentMethodPayto copyWith({Omittable<String?>? bsbNumber, Omittable<String?>? last4, Omittable<String?>? payId, }) { return PaymentMethodPayto(
  bsbNumber: bsbNumber ?? this.bsbNumber,
  last4: last4 ?? this.last4,
  payId: payId ?? this.payId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodPayto &&
          bsbNumber == other.bsbNumber &&
          last4 == other.last4 &&
          payId == other.payId; } 
@override int get hashCode { return Object.hash(bsbNumber, last4, payId); } 
@override String toString() { return 'PaymentMethodPayto(bsbNumber: $bsbNumber, last4: $last4, payId: $payId)'; } 
 }
