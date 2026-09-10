// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'credit_note.dart';/// The ID of the credit note (if any) related to the transaction.
@immutable
final class CustomerBalanceTransactionCreditNote {
  const CustomerBalanceTransactionCreditNote({this.string = const Omittable.absent(),
this.creditNote = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CustomerBalanceTransactionCreditNote._({required this.rawValue, required this.string,
required this.creditNote,});
  factory CustomerBalanceTransactionCreditNote.fromJson(Object? json) => CustomerBalanceTransactionCreditNote._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
creditNote: parseAnyOfVariant<CreditNote>(json, (value) => CreditNote.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<CreditNote> creditNote;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || creditNote.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (creditNote.isPresent) creditNote.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CustomerBalanceTransactionCreditNote && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CustomerBalanceTransactionCreditNote(${toJson()})';
}
