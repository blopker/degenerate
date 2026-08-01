// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodAcssDebit {const PaymentMethodAcssDebit({this.bankName = const Omittable.absent(), this.fingerprint = const Omittable.absent(), this.institutionNumber = const Omittable.absent(), this.last4 = const Omittable.absent(), this.transitNumber = const Omittable.absent(), });

factory PaymentMethodAcssDebit.fromJson(Map<String, dynamic> json) { return PaymentMethodAcssDebit(
  bankName: json.containsKey('bank_name') ? Omittable(json['bank_name'] as String?) : const Omittable.absent(),
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  institutionNumber: json.containsKey('institution_number') ? Omittable(json['institution_number'] as String?) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
  transitNumber: json.containsKey('transit_number') ? Omittable(json['transit_number'] as String?) : const Omittable.absent(),
); }

/// Name of the bank associated with the bank account.
final Omittable<String?> bankName;

/// Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
final Omittable<String?> fingerprint;

/// Institution number of the bank account.
final Omittable<String?> institutionNumber;

/// Last four digits of the bank account number.
final Omittable<String?> last4;

/// Transit number of the bank account.
final Omittable<String?> transitNumber;

Map<String, dynamic> toJson() { return {
  if (bankName.isPresent) 'bank_name': bankName.value,
  if (fingerprint.isPresent) 'fingerprint': fingerprint.value,
  if (institutionNumber.isPresent) 'institution_number': institutionNumber.value,
  if (last4.isPresent) 'last4': last4.value,
  if (transitNumber.isPresent) 'transit_number': transitNumber.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bank_name', 'fingerprint', 'institution_number', 'last4', 'transit_number'}.contains(key)); } 
PaymentMethodAcssDebit copyWith({Omittable<String?>? bankName, Omittable<String?>? fingerprint, Omittable<String?>? institutionNumber, Omittable<String?>? last4, Omittable<String?>? transitNumber, }) { return PaymentMethodAcssDebit(
  bankName: bankName ?? this.bankName,
  fingerprint: fingerprint ?? this.fingerprint,
  institutionNumber: institutionNumber ?? this.institutionNumber,
  last4: last4 ?? this.last4,
  transitNumber: transitNumber ?? this.transitNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodAcssDebit &&
          bankName == other.bankName &&
          fingerprint == other.fingerprint &&
          institutionNumber == other.institutionNumber &&
          last4 == other.last4 &&
          transitNumber == other.transitNumber; } 
@override int get hashCode { return Object.hash(bankName, fingerprint, institutionNumber, last4, transitNumber); } 
@override String toString() { return 'PaymentMethodAcssDebit(bankName: $bankName, fingerprint: $fingerprint, institutionNumber: $institutionNumber, last4: $last4, transitNumber: $transitNumber)'; } 
 }
