// GENERATED CODE - DO NOT MODIFY BY HAND

final class SourceTypeSofort {const SourceTypeSofort({this.bankCode, this.bankName, this.bic, this.country, this.ibanLast4, this.preferredLanguage, this.statementDescriptor, });

factory SourceTypeSofort.fromJson(Map<String, dynamic> json) { return SourceTypeSofort(
  bankCode: json['bank_code'] as String?,
  bankName: json['bank_name'] as String?,
  bic: json['bic'] as String?,
  country: json['country'] as String?,
  ibanLast4: json['iban_last4'] as String?,
  preferredLanguage: json['preferred_language'] as String?,
  statementDescriptor: json['statement_descriptor'] as String?,
); }

final String? bankCode;

final String? bankName;

final String? bic;

final String? country;

final String? ibanLast4;

final String? preferredLanguage;

final String? statementDescriptor;

Map<String, dynamic> toJson() { return {
  'bank_code': ?bankCode,
  'bank_name': ?bankName,
  'bic': ?bic,
  'country': ?country,
  'iban_last4': ?ibanLast4,
  'preferred_language': ?preferredLanguage,
  'statement_descriptor': ?statementDescriptor,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bank_code', 'bank_name', 'bic', 'country', 'iban_last4', 'preferred_language', 'statement_descriptor'}.contains(key)); } 
SourceTypeSofort copyWith({String? Function()? bankCode, String? Function()? bankName, String? Function()? bic, String? Function()? country, String? Function()? ibanLast4, String? Function()? preferredLanguage, String? Function()? statementDescriptor, }) { return SourceTypeSofort(
  bankCode: bankCode != null ? bankCode() : this.bankCode,
  bankName: bankName != null ? bankName() : this.bankName,
  bic: bic != null ? bic() : this.bic,
  country: country != null ? country() : this.country,
  ibanLast4: ibanLast4 != null ? ibanLast4() : this.ibanLast4,
  preferredLanguage: preferredLanguage != null ? preferredLanguage() : this.preferredLanguage,
  statementDescriptor: statementDescriptor != null ? statementDescriptor() : this.statementDescriptor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceTypeSofort &&
          bankCode == other.bankCode &&
          bankName == other.bankName &&
          bic == other.bic &&
          country == other.country &&
          ibanLast4 == other.ibanLast4 &&
          preferredLanguage == other.preferredLanguage &&
          statementDescriptor == other.statementDescriptor; } 
@override int get hashCode { return Object.hash(bankCode, bankName, bic, country, ibanLast4, preferredLanguage, statementDescriptor); } 
@override String toString() { return 'SourceTypeSofort(bankCode: $bankCode, bankName: $bankName, bic: $bic, country: $country, ibanLast4: $ibanLast4, preferredLanguage: $preferredLanguage, statementDescriptor: $statementDescriptor)'; } 
 }
