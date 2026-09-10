// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'external_account_payout_bank_account3.dart';/// Either a token, like the ones returned by [Stripe.js](https://stripe.com/docs/js), or a dictionary containing a user's bank account details.
@immutable
final class PostAccountsAccountExternalAccountsRequestBankAccount {
  const PostAccountsAccountExternalAccountsRequestBankAccount({this.externalAccountPayoutBankAccount3 = const Omittable.absent(),
this.string = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountExternalAccountsRequestBankAccount._({required this.rawValue, required this.externalAccountPayoutBankAccount3,
required this.string,});
  factory PostAccountsAccountExternalAccountsRequestBankAccount.fromJson(Object? json) => PostAccountsAccountExternalAccountsRequestBankAccount._(
    rawValue: Omittable(json),
    externalAccountPayoutBankAccount3: parseAnyOfVariant<ExternalAccountPayoutBankAccount3>(json, (value) => ExternalAccountPayoutBankAccount3.fromJson(value! as Map<String, dynamic>)),
string: parseAnyOfVariant<String>(json, (value) => value! as String),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ExternalAccountPayoutBankAccount3> externalAccountPayoutBankAccount3;
final Omittable<String> string;

  /// Whether at least one known variant matched.
  bool get isValid => externalAccountPayoutBankAccount3.isPresent || string.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (externalAccountPayoutBankAccount3.isPresent) externalAccountPayoutBankAccount3.value?.toJson(),
if (string.isPresent) string.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountExternalAccountsRequestBankAccount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountExternalAccountsRequestBankAccount(${toJson()})';
}
