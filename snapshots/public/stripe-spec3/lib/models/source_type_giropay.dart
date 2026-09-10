// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SourceTypeGiropay {const SourceTypeGiropay({this.bankCode = const Omittable.absent(), this.bankName = const Omittable.absent(), this.bic = const Omittable.absent(), this.statementDescriptor = const Omittable.absent(), });

factory SourceTypeGiropay.fromJson(Map<String, dynamic> json) { return SourceTypeGiropay(
  bankCode: json.containsKey('bank_code') ? Omittable(json['bank_code'] as String?) : const Omittable.absent(),
  bankName: json.containsKey('bank_name') ? Omittable(json['bank_name'] as String?) : const Omittable.absent(),
  bic: json.containsKey('bic') ? Omittable(json['bic'] as String?) : const Omittable.absent(),
  statementDescriptor: json.containsKey('statement_descriptor') ? Omittable(json['statement_descriptor'] as String?) : const Omittable.absent(),
); }

final Omittable<String?> bankCode;

final Omittable<String?> bankName;

final Omittable<String?> bic;

final Omittable<String?> statementDescriptor;

Map<String, dynamic> toJson() { return {
  if (bankCode.isPresent) 'bank_code': bankCode.value,
  if (bankName.isPresent) 'bank_name': bankName.value,
  if (bic.isPresent) 'bic': bic.value,
  if (statementDescriptor.isPresent) 'statement_descriptor': statementDescriptor.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bank_code', 'bank_name', 'bic', 'statement_descriptor'}.contains(key)); } 
SourceTypeGiropay copyWith({Omittable<String?>? bankCode, Omittable<String?>? bankName, Omittable<String?>? bic, Omittable<String?>? statementDescriptor, }) { return SourceTypeGiropay(
  bankCode: bankCode ?? this.bankCode,
  bankName: bankName ?? this.bankName,
  bic: bic ?? this.bic,
  statementDescriptor: statementDescriptor ?? this.statementDescriptor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceTypeGiropay &&
          bankCode == other.bankCode &&
          bankName == other.bankName &&
          bic == other.bic &&
          statementDescriptor == other.statementDescriptor; } 
@override int get hashCode { return Object.hash(bankCode, bankName, bic, statementDescriptor); } 
@override String toString() { return 'SourceTypeGiropay(bankCode: $bankCode, bankName: $bankName, bic: $bic, statementDescriptor: $statementDescriptor)'; } 
 }
