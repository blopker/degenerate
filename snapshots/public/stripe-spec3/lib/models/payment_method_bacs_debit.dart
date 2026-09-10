// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodBacsDebit {const PaymentMethodBacsDebit({this.fingerprint = const Omittable.absent(), this.last4 = const Omittable.absent(), this.sortCode = const Omittable.absent(), });

factory PaymentMethodBacsDebit.fromJson(Map<String, dynamic> json) { return PaymentMethodBacsDebit(
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
  sortCode: json.containsKey('sort_code') ? Omittable(json['sort_code'] as String?) : const Omittable.absent(),
); }

/// Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
final Omittable<String?> fingerprint;

/// Last four digits of the bank account number.
final Omittable<String?> last4;

/// Sort code of the bank account. (e.g., `10-20-30`)
final Omittable<String?> sortCode;

Map<String, dynamic> toJson() { return {
  if (fingerprint.isPresent) 'fingerprint': fingerprint.value,
  if (last4.isPresent) 'last4': last4.value,
  if (sortCode.isPresent) 'sort_code': sortCode.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'fingerprint', 'last4', 'sort_code'}.contains(key)); } 
PaymentMethodBacsDebit copyWith({Omittable<String?>? fingerprint, Omittable<String?>? last4, Omittable<String?>? sortCode, }) { return PaymentMethodBacsDebit(
  fingerprint: fingerprint ?? this.fingerprint,
  last4: last4 ?? this.last4,
  sortCode: sortCode ?? this.sortCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodBacsDebit &&
          fingerprint == other.fingerprint &&
          last4 == other.last4 &&
          sortCode == other.sortCode; } 
@override int get hashCode { return Object.hash(fingerprint, last4, sortCode); } 
@override String toString() { return 'PaymentMethodBacsDebit(fingerprint: $fingerprint, last4: $last4, sortCode: $sortCode)'; } 
 }
