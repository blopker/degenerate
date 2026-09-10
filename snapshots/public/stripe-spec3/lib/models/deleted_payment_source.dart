// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'deleted_bank_account.dart';import 'deleted_card.dart';
@immutable
final class DeletedPaymentSource {
  const DeletedPaymentSource({this.deletedBankAccount = const Omittable.absent(),
this.deletedCard = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const DeletedPaymentSource._({required this.rawValue, required this.deletedBankAccount,
required this.deletedCard,});
  factory DeletedPaymentSource.fromJson(Object? json) => DeletedPaymentSource._(
    rawValue: Omittable(json),
    deletedBankAccount: parseAnyOfVariant<DeletedBankAccount>(json, (value) => DeletedBankAccount.fromJson(value! as Map<String, dynamic>)),
deletedCard: parseAnyOfVariant<DeletedCard>(json, (value) => DeletedCard.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<DeletedBankAccount> deletedBankAccount;
final Omittable<DeletedCard> deletedCard;

  /// Whether at least one known variant matched.
  bool get isValid => deletedBankAccount.isPresent || deletedCard.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (deletedBankAccount.isPresent) deletedBankAccount.value?.toJson(),
if (deletedCard.isPresent) deletedCard.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is DeletedPaymentSource && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'DeletedPaymentSource(${toJson()})';
}
