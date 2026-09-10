// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'external_account_payout_bank_account.dart';/// Either a token, like the ones returned by [Stripe.js](https://stripe.com/docs/js), or a dictionary containing a user's bank account details.
@immutable
final class PostAccountsRequestBankAccount {
  const PostAccountsRequestBankAccount({this.externalAccountPayoutBankAccount = const Omittable.absent(),
this.string = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsRequestBankAccount._({required this.rawValue, required this.externalAccountPayoutBankAccount,
required this.string,});
  factory PostAccountsRequestBankAccount.fromJson(Object? json) => PostAccountsRequestBankAccount._(
    rawValue: Omittable(json),
    externalAccountPayoutBankAccount: parseAnyOfVariant<ExternalAccountPayoutBankAccount>(json, (value) => ExternalAccountPayoutBankAccount.fromJson(value! as Map<String, dynamic>)),
string: parseAnyOfVariant<String>(json, (value) => value! as String),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ExternalAccountPayoutBankAccount> externalAccountPayoutBankAccount;
final Omittable<String> string;

  /// Whether at least one known variant matched.
  bool get isValid => externalAccountPayoutBankAccount.isPresent || string.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (externalAccountPayoutBankAccount.isPresent) externalAccountPayoutBankAccount.value?.toJson(),
if (string.isPresent) string.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsRequestBankAccount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsRequestBankAccount(${toJson()})';
}
