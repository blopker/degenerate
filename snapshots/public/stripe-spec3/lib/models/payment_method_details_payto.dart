// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsPayto {const PaymentMethodDetailsPayto({this.bsbNumber = const Omittable.absent(), this.last4 = const Omittable.absent(), this.mandate, this.payId = const Omittable.absent(), });

factory PaymentMethodDetailsPayto.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsPayto(
  bsbNumber: json.containsKey('bsb_number') ? Omittable(json['bsb_number'] as String?) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
  mandate: json['mandate'] as String?,
  payId: json.containsKey('pay_id') ? Omittable(json['pay_id'] as String?) : const Omittable.absent(),
); }

/// Bank-State-Branch number of the bank account.
final Omittable<String?> bsbNumber;

/// Last four digits of the bank account number.
final Omittable<String?> last4;

/// ID of the mandate used to make this payment.
final String? mandate;

/// The PayID alias for the bank account.
final Omittable<String?> payId;

Map<String, dynamic> toJson() { return {
  if (bsbNumber.isPresent) 'bsb_number': bsbNumber.value,
  if (last4.isPresent) 'last4': last4.value,
  'mandate': ?mandate,
  if (payId.isPresent) 'pay_id': payId.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bsb_number', 'last4', 'mandate', 'pay_id'}.contains(key)); } 
PaymentMethodDetailsPayto copyWith({Omittable<String?>? bsbNumber, Omittable<String?>? last4, String? Function()? mandate, Omittable<String?>? payId, }) { return PaymentMethodDetailsPayto(
  bsbNumber: bsbNumber ?? this.bsbNumber,
  last4: last4 ?? this.last4,
  mandate: mandate != null ? mandate() : this.mandate,
  payId: payId ?? this.payId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsPayto &&
          bsbNumber == other.bsbNumber &&
          last4 == other.last4 &&
          mandate == other.mandate &&
          payId == other.payId; } 
@override int get hashCode { return Object.hash(bsbNumber, last4, mandate, payId); } 
@override String toString() { return 'PaymentMethodDetailsPayto(bsbNumber: $bsbNumber, last4: $last4, mandate: $mandate, payId: $payId)'; } 
 }
