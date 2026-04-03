// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SourceTypeIdeal {const SourceTypeIdeal({this.bank, this.bic, this.ibanLast4, this.statementDescriptor, });

factory SourceTypeIdeal.fromJson(Map<String, dynamic> json) { return SourceTypeIdeal(
  bank: json['bank'] as String?,
  bic: json['bic'] as String?,
  ibanLast4: json['iban_last4'] as String?,
  statementDescriptor: json['statement_descriptor'] as String?,
); }

final String? bank;

final String? bic;

final String? ibanLast4;

final String? statementDescriptor;

Map<String, dynamic> toJson() { return {
  'bank': ?bank,
  'bic': ?bic,
  'iban_last4': ?ibanLast4,
  'statement_descriptor': ?statementDescriptor,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bank', 'bic', 'iban_last4', 'statement_descriptor'}.contains(key)); } 
SourceTypeIdeal copyWith({String? Function()? bank, String? Function()? bic, String? Function()? ibanLast4, String? Function()? statementDescriptor, }) { return SourceTypeIdeal(
  bank: bank != null ? bank() : this.bank,
  bic: bic != null ? bic() : this.bic,
  ibanLast4: ibanLast4 != null ? ibanLast4() : this.ibanLast4,
  statementDescriptor: statementDescriptor != null ? statementDescriptor() : this.statementDescriptor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceTypeIdeal &&
          bank == other.bank &&
          bic == other.bic &&
          ibanLast4 == other.ibanLast4 &&
          statementDescriptor == other.statementDescriptor; } 
@override int get hashCode { return Object.hash(bank, bic, ibanLast4, statementDescriptor); } 
@override String toString() { return 'SourceTypeIdeal(bank: $bank, bic: $bic, ibanLast4: $ibanLast4, statementDescriptor: $statementDescriptor)'; } 
 }
