// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bank_account.dart';import 'card.dart';import 'source.dart';/// ID of the default payment source for the invoice. It must belong to the customer associated with the invoice and be in a chargeable state. If not set, defaults to the subscription's default source, if any, or to the customer's default source.
@immutable
final class InvoiceDefaultSource {
  const InvoiceDefaultSource({this.string = const Omittable.absent(),
this.bankAccount = const Omittable.absent(),
this.card = const Omittable.absent(),
this.source = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const InvoiceDefaultSource._({required this.rawValue, required this.string,
required this.bankAccount,
required this.card,
required this.source,});
  factory InvoiceDefaultSource.fromJson(Object? json) => InvoiceDefaultSource._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
bankAccount: parseAnyOfVariant<BankAccount>(json, (value) => BankAccount.fromJson(value! as Map<String, dynamic>)),
card: parseAnyOfVariant<Card>(json, (value) => Card.fromJson(value! as Map<String, dynamic>)),
source: parseAnyOfVariant<Source>(json, (value) => Source.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<BankAccount> bankAccount;
final Omittable<Card> card;
final Omittable<Source> source;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || bankAccount.isPresent || card.isPresent || source.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (bankAccount.isPresent) bankAccount.value?.toJson(),
if (card.isPresent) card.value?.toJson(),
if (source.isPresent) source.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is InvoiceDefaultSource && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'InvoiceDefaultSource(${toJson()})';
}
