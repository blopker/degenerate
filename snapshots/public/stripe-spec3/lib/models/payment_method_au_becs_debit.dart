// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodAuBecsDebit {const PaymentMethodAuBecsDebit({this.bsbNumber = const Omittable.absent(), this.fingerprint = const Omittable.absent(), this.last4 = const Omittable.absent(), });

factory PaymentMethodAuBecsDebit.fromJson(Map<String, dynamic> json) { return PaymentMethodAuBecsDebit(
  bsbNumber: json.containsKey('bsb_number') ? Omittable(json['bsb_number'] as String?) : const Omittable.absent(),
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
); }

/// Six-digit number identifying bank and branch associated with this bank account.
final Omittable<String?> bsbNumber;

/// Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
final Omittable<String?> fingerprint;

/// Last four digits of the bank account number.
final Omittable<String?> last4;

Map<String, dynamic> toJson() { return {
  if (bsbNumber.isPresent) 'bsb_number': bsbNumber.value,
  if (fingerprint.isPresent) 'fingerprint': fingerprint.value,
  if (last4.isPresent) 'last4': last4.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bsb_number', 'fingerprint', 'last4'}.contains(key)); } 
PaymentMethodAuBecsDebit copyWith({Omittable<String?>? bsbNumber, Omittable<String?>? fingerprint, Omittable<String?>? last4, }) { return PaymentMethodAuBecsDebit(
  bsbNumber: bsbNumber ?? this.bsbNumber,
  fingerprint: fingerprint ?? this.fingerprint,
  last4: last4 ?? this.last4,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodAuBecsDebit &&
          bsbNumber == other.bsbNumber &&
          fingerprint == other.fingerprint &&
          last4 == other.last4; } 
@override int get hashCode { return Object.hash(bsbNumber, fingerprint, last4); } 
@override String toString() { return 'PaymentMethodAuBecsDebit(bsbNumber: $bsbNumber, fingerprint: $fingerprint, last4: $last4)'; } 
 }
