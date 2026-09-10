// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'external_account_payout_bank_account2.dart';/// Either a token, like the ones returned by [Stripe.js](https://stripe.com/docs/js), or a dictionary containing a user's bank account details.
@immutable
final class PostAccountsAccountBankAccountsRequestBankAccount {
  const PostAccountsAccountBankAccountsRequestBankAccount({this.externalAccountPayoutBankAccount2 = const Omittable.absent(),
this.string = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountBankAccountsRequestBankAccount._({required this.rawValue, required this.externalAccountPayoutBankAccount2,
required this.string,});
  factory PostAccountsAccountBankAccountsRequestBankAccount.fromJson(Object? json) => PostAccountsAccountBankAccountsRequestBankAccount._(
    rawValue: Omittable(json),
    externalAccountPayoutBankAccount2: parseAnyOfVariant<ExternalAccountPayoutBankAccount2>(json, (value) => ExternalAccountPayoutBankAccount2.fromJson(value! as Map<String, dynamic>)),
string: parseAnyOfVariant<String>(json, (value) => value! as String),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ExternalAccountPayoutBankAccount2> externalAccountPayoutBankAccount2;
final Omittable<String> string;

  /// Whether at least one known variant matched.
  bool get isValid => externalAccountPayoutBankAccount2.isPresent || string.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (externalAccountPayoutBankAccount2.isPresent) externalAccountPayoutBankAccount2.value?.toJson(),
if (string.isPresent) string.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountBankAccountsRequestBankAccount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountBankAccountsRequestBankAccount(${toJson()})';
}
