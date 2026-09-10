// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bank_account.dart';import 'card.dart';import 'source.dart';
@immutable
final class CustomerSourcesData {
  const CustomerSourcesData({this.bankAccount = const Omittable.absent(),
this.card = const Omittable.absent(),
this.source = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CustomerSourcesData._({required this.rawValue, required this.bankAccount,
required this.card,
required this.source,});
  factory CustomerSourcesData.fromJson(Object? json) => CustomerSourcesData._(
    rawValue: Omittable(json),
    bankAccount: parseAnyOfVariant<BankAccount>(json, (value) => BankAccount.fromJson(value! as Map<String, dynamic>)),
card: parseAnyOfVariant<Card>(json, (value) => Card.fromJson(value! as Map<String, dynamic>)),
source: parseAnyOfVariant<Source>(json, (value) => Source.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BankAccount> bankAccount;
final Omittable<Card> card;
final Omittable<Source> source;

  /// Whether at least one known variant matched.
  bool get isValid => bankAccount.isPresent || card.isPresent || source.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (bankAccount.isPresent) bankAccount.value?.toJson(),
if (card.isPresent) card.value?.toJson(),
if (source.isPresent) source.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CustomerSourcesData && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CustomerSourcesData(${toJson()})';
}
