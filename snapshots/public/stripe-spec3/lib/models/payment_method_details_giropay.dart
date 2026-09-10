// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsGiropay {const PaymentMethodDetailsGiropay({this.bankCode = const Omittable.absent(), this.bankName = const Omittable.absent(), this.bic = const Omittable.absent(), this.verifiedName = const Omittable.absent(), });

factory PaymentMethodDetailsGiropay.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsGiropay(
  bankCode: json.containsKey('bank_code') ? Omittable(json['bank_code'] as String?) : const Omittable.absent(),
  bankName: json.containsKey('bank_name') ? Omittable(json['bank_name'] as String?) : const Omittable.absent(),
  bic: json.containsKey('bic') ? Omittable(json['bic'] as String?) : const Omittable.absent(),
  verifiedName: json.containsKey('verified_name') ? Omittable(json['verified_name'] as String?) : const Omittable.absent(),
); }

/// Bank code of bank associated with the bank account.
final Omittable<String?> bankCode;

/// Name of the bank associated with the bank account.
final Omittable<String?> bankName;

/// Bank Identifier Code of the bank associated with the bank account.
final Omittable<String?> bic;

/// Owner's verified full name. Values are verified or provided by Giropay directly
/// (if supported) at the time of authorization or settlement. They cannot be set or mutated.
/// Giropay rarely provides this information so the attribute is usually empty.
final Omittable<String?> verifiedName;

Map<String, dynamic> toJson() { return {
  if (bankCode.isPresent) 'bank_code': bankCode.value,
  if (bankName.isPresent) 'bank_name': bankName.value,
  if (bic.isPresent) 'bic': bic.value,
  if (verifiedName.isPresent) 'verified_name': verifiedName.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bank_code', 'bank_name', 'bic', 'verified_name'}.contains(key)); } 
PaymentMethodDetailsGiropay copyWith({Omittable<String?>? bankCode, Omittable<String?>? bankName, Omittable<String?>? bic, Omittable<String?>? verifiedName, }) { return PaymentMethodDetailsGiropay(
  bankCode: bankCode ?? this.bankCode,
  bankName: bankName ?? this.bankName,
  bic: bic ?? this.bic,
  verifiedName: verifiedName ?? this.verifiedName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsGiropay &&
          bankCode == other.bankCode &&
          bankName == other.bankName &&
          bic == other.bic &&
          verifiedName == other.verifiedName; } 
@override int get hashCode { return Object.hash(bankCode, bankName, bic, verifiedName); } 
@override String toString() { return 'PaymentMethodDetailsGiropay(bankCode: $bankCode, bankName: $bankName, bic: $bic, verifiedName: $verifiedName)'; } 
 }
