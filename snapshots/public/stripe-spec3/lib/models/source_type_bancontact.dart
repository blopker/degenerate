// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SourceTypeBancontact {const SourceTypeBancontact({this.bankCode = const Omittable.absent(), this.bankName = const Omittable.absent(), this.bic = const Omittable.absent(), this.ibanLast4 = const Omittable.absent(), this.preferredLanguage = const Omittable.absent(), this.statementDescriptor = const Omittable.absent(), });

factory SourceTypeBancontact.fromJson(Map<String, dynamic> json) { return SourceTypeBancontact(
  bankCode: json.containsKey('bank_code') ? Omittable(json['bank_code'] as String?) : const Omittable.absent(),
  bankName: json.containsKey('bank_name') ? Omittable(json['bank_name'] as String?) : const Omittable.absent(),
  bic: json.containsKey('bic') ? Omittable(json['bic'] as String?) : const Omittable.absent(),
  ibanLast4: json.containsKey('iban_last4') ? Omittable(json['iban_last4'] as String?) : const Omittable.absent(),
  preferredLanguage: json.containsKey('preferred_language') ? Omittable(json['preferred_language'] as String?) : const Omittable.absent(),
  statementDescriptor: json.containsKey('statement_descriptor') ? Omittable(json['statement_descriptor'] as String?) : const Omittable.absent(),
); }

final Omittable<String?> bankCode;

final Omittable<String?> bankName;

final Omittable<String?> bic;

final Omittable<String?> ibanLast4;

final Omittable<String?> preferredLanguage;

final Omittable<String?> statementDescriptor;

Map<String, dynamic> toJson() { return {
  if (bankCode.isPresent) 'bank_code': bankCode.value,
  if (bankName.isPresent) 'bank_name': bankName.value,
  if (bic.isPresent) 'bic': bic.value,
  if (ibanLast4.isPresent) 'iban_last4': ibanLast4.value,
  if (preferredLanguage.isPresent) 'preferred_language': preferredLanguage.value,
  if (statementDescriptor.isPresent) 'statement_descriptor': statementDescriptor.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bank_code', 'bank_name', 'bic', 'iban_last4', 'preferred_language', 'statement_descriptor'}.contains(key)); } 
SourceTypeBancontact copyWith({Omittable<String?>? bankCode, Omittable<String?>? bankName, Omittable<String?>? bic, Omittable<String?>? ibanLast4, Omittable<String?>? preferredLanguage, Omittable<String?>? statementDescriptor, }) { return SourceTypeBancontact(
  bankCode: bankCode ?? this.bankCode,
  bankName: bankName ?? this.bankName,
  bic: bic ?? this.bic,
  ibanLast4: ibanLast4 ?? this.ibanLast4,
  preferredLanguage: preferredLanguage ?? this.preferredLanguage,
  statementDescriptor: statementDescriptor ?? this.statementDescriptor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceTypeBancontact &&
          bankCode == other.bankCode &&
          bankName == other.bankName &&
          bic == other.bic &&
          ibanLast4 == other.ibanLast4 &&
          preferredLanguage == other.preferredLanguage &&
          statementDescriptor == other.statementDescriptor; } 
@override int get hashCode { return Object.hash(bankCode, bankName, bic, ibanLast4, preferredLanguage, statementDescriptor); } 
@override String toString() { return 'SourceTypeBancontact(bankCode: $bankCode, bankName: $bankName, bic: $bic, ibanLast4: $ibanLast4, preferredLanguage: $preferredLanguage, statementDescriptor: $statementDescriptor)'; } 
 }
