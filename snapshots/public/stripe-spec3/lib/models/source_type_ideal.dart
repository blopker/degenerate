// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SourceTypeIdeal {const SourceTypeIdeal({this.bank = const Omittable.absent(), this.bic = const Omittable.absent(), this.ibanLast4 = const Omittable.absent(), this.statementDescriptor = const Omittable.absent(), });

factory SourceTypeIdeal.fromJson(Map<String, dynamic> json) { return SourceTypeIdeal(
  bank: json.containsKey('bank') ? Omittable(json['bank'] as String?) : const Omittable.absent(),
  bic: json.containsKey('bic') ? Omittable(json['bic'] as String?) : const Omittable.absent(),
  ibanLast4: json.containsKey('iban_last4') ? Omittable(json['iban_last4'] as String?) : const Omittable.absent(),
  statementDescriptor: json.containsKey('statement_descriptor') ? Omittable(json['statement_descriptor'] as String?) : const Omittable.absent(),
); }

final Omittable<String?> bank;

final Omittable<String?> bic;

final Omittable<String?> ibanLast4;

final Omittable<String?> statementDescriptor;

Map<String, dynamic> toJson() { return {
  if (bank.isPresent) 'bank': bank.value,
  if (bic.isPresent) 'bic': bic.value,
  if (ibanLast4.isPresent) 'iban_last4': ibanLast4.value,
  if (statementDescriptor.isPresent) 'statement_descriptor': statementDescriptor.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bank', 'bic', 'iban_last4', 'statement_descriptor'}.contains(key)); } 
SourceTypeIdeal copyWith({Omittable<String?>? bank, Omittable<String?>? bic, Omittable<String?>? ibanLast4, Omittable<String?>? statementDescriptor, }) { return SourceTypeIdeal(
  bank: bank ?? this.bank,
  bic: bic ?? this.bic,
  ibanLast4: ibanLast4 ?? this.ibanLast4,
  statementDescriptor: statementDescriptor ?? this.statementDescriptor,
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
