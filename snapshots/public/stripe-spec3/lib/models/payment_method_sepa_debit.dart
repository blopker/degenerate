// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'sepa_debit_generated_from.dart';/// 
@immutable final class PaymentMethodSepaDebit {const PaymentMethodSepaDebit({this.bankCode = const Omittable.absent(), this.branchCode = const Omittable.absent(), this.country = const Omittable.absent(), this.fingerprint = const Omittable.absent(), this.generatedFrom = const Omittable.absent(), this.last4 = const Omittable.absent(), });

factory PaymentMethodSepaDebit.fromJson(Map<String, dynamic> json) { return PaymentMethodSepaDebit(
  bankCode: json.containsKey('bank_code') ? Omittable(json['bank_code'] as String?) : const Omittable.absent(),
  branchCode: json.containsKey('branch_code') ? Omittable(json['branch_code'] as String?) : const Omittable.absent(),
  country: json.containsKey('country') ? Omittable(json['country'] as String?) : const Omittable.absent(),
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  generatedFrom: json.containsKey('generated_from') ? Omittable(json['generated_from'] != null ? SepaDebitGeneratedFrom.fromJson(json['generated_from'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
); }

/// Bank code of bank associated with the bank account.
final Omittable<String?> bankCode;

/// Branch code of bank associated with the bank account.
final Omittable<String?> branchCode;

/// Two-letter ISO code representing the country the bank account is located in.
final Omittable<String?> country;

/// Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
final Omittable<String?> fingerprint;

/// Information about the object that generated this PaymentMethod.
final Omittable<SepaDebitGeneratedFrom?> generatedFrom;

/// Last four characters of the IBAN.
final Omittable<String?> last4;

Map<String, dynamic> toJson() { return {
  if (bankCode.isPresent) 'bank_code': bankCode.value,
  if (branchCode.isPresent) 'branch_code': branchCode.value,
  if (country.isPresent) 'country': country.value,
  if (fingerprint.isPresent) 'fingerprint': fingerprint.value,
  if (generatedFrom.isPresent) 'generated_from': generatedFrom.value?.toJson(),
  if (last4.isPresent) 'last4': last4.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bank_code', 'branch_code', 'country', 'fingerprint', 'generated_from', 'last4'}.contains(key)); } 
PaymentMethodSepaDebit copyWith({Omittable<String?>? bankCode, Omittable<String?>? branchCode, Omittable<String?>? country, Omittable<String?>? fingerprint, Omittable<SepaDebitGeneratedFrom?>? generatedFrom, Omittable<String?>? last4, }) { return PaymentMethodSepaDebit(
  bankCode: bankCode ?? this.bankCode,
  branchCode: branchCode ?? this.branchCode,
  country: country ?? this.country,
  fingerprint: fingerprint ?? this.fingerprint,
  generatedFrom: generatedFrom ?? this.generatedFrom,
  last4: last4 ?? this.last4,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodSepaDebit &&
          bankCode == other.bankCode &&
          branchCode == other.branchCode &&
          country == other.country &&
          fingerprint == other.fingerprint &&
          generatedFrom == other.generatedFrom &&
          last4 == other.last4; } 
@override int get hashCode { return Object.hash(bankCode, branchCode, country, fingerprint, generatedFrom, last4); } 
@override String toString() { return 'PaymentMethodSepaDebit(bankCode: $bankCode, branchCode: $branchCode, country: $country, fingerprint: $fingerprint, generatedFrom: $generatedFrom, last4: $last4)'; } 
 }
