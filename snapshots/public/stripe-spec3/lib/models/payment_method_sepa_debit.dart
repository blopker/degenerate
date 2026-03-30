// GENERATED CODE - DO NOT MODIFY BY HAND

import 'sepa_debit_generated_from.dart';/// 
final class PaymentMethodSepaDebit {const PaymentMethodSepaDebit({this.bankCode, this.branchCode, this.country, this.fingerprint, this.generatedFrom, this.last4, });

factory PaymentMethodSepaDebit.fromJson(Map<String, dynamic> json) { return PaymentMethodSepaDebit(
  bankCode: json['bank_code'] as String?,
  branchCode: json['branch_code'] as String?,
  country: json['country'] as String?,
  fingerprint: json['fingerprint'] as String?,
  generatedFrom: json['generated_from'] != null ? SepaDebitGeneratedFrom.fromJson(json['generated_from'] as Map<String, dynamic>) : null,
  last4: json['last4'] as String?,
); }

/// Bank code of bank associated with the bank account.
final String? bankCode;

/// Branch code of bank associated with the bank account.
final String? branchCode;

/// Two-letter ISO code representing the country the bank account is located in.
final String? country;

/// Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
final String? fingerprint;

/// Information about the object that generated this PaymentMethod.
final SepaDebitGeneratedFrom? generatedFrom;

/// Last four characters of the IBAN.
final String? last4;

Map<String, dynamic> toJson() { return {
  'bank_code': ?bankCode,
  'branch_code': ?branchCode,
  'country': ?country,
  'fingerprint': ?fingerprint,
  if (generatedFrom != null) 'generated_from': generatedFrom?.toJson(),
  'last4': ?last4,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bank_code', 'branch_code', 'country', 'fingerprint', 'generated_from', 'last4'}.contains(key)); } 
PaymentMethodSepaDebit copyWith({String? Function()? bankCode, String? Function()? branchCode, String? Function()? country, String? Function()? fingerprint, SepaDebitGeneratedFrom? Function()? generatedFrom, String? Function()? last4, }) { return PaymentMethodSepaDebit(
  bankCode: bankCode != null ? bankCode() : this.bankCode,
  branchCode: branchCode != null ? branchCode() : this.branchCode,
  country: country != null ? country() : this.country,
  fingerprint: fingerprint != null ? fingerprint() : this.fingerprint,
  generatedFrom: generatedFrom != null ? generatedFrom() : this.generatedFrom,
  last4: last4 != null ? last4() : this.last4,
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
