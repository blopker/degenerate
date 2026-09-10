// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bank_account.dart';import 'card.dart';import 'deleted_bank_account.dart';import 'deleted_card.dart';/// ID of the bank account or card the payout is sent to.
@immutable
final class PayoutDestination {
  const PayoutDestination({this.string = const Omittable.absent(),
this.bankAccount = const Omittable.absent(),
this.card = const Omittable.absent(),
this.deletedBankAccount = const Omittable.absent(),
this.deletedCard = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PayoutDestination._({required this.rawValue, required this.string,
required this.bankAccount,
required this.card,
required this.deletedBankAccount,
required this.deletedCard,});
  factory PayoutDestination.fromJson(Object? json) => PayoutDestination._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
bankAccount: parseAnyOfVariant<BankAccount>(json, (value) => BankAccount.fromJson(value! as Map<String, dynamic>)),
card: parseAnyOfVariant<Card>(json, (value) => Card.fromJson(value! as Map<String, dynamic>)),
deletedBankAccount: parseAnyOfVariant<DeletedBankAccount>(json, (value) => DeletedBankAccount.fromJson(value! as Map<String, dynamic>)),
deletedCard: parseAnyOfVariant<DeletedCard>(json, (value) => DeletedCard.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<BankAccount> bankAccount;
final Omittable<Card> card;
final Omittable<DeletedBankAccount> deletedBankAccount;
final Omittable<DeletedCard> deletedCard;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || bankAccount.isPresent || card.isPresent || deletedBankAccount.isPresent || deletedCard.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (bankAccount.isPresent) bankAccount.value?.toJson(),
if (card.isPresent) card.value?.toJson(),
if (deletedBankAccount.isPresent) deletedBankAccount.value?.toJson(),
if (deletedCard.isPresent) deletedCard.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PayoutDestination && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PayoutDestination(${toJson()})';
}
