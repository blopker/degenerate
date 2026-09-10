// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer_payment_source_bank_account.dart';/// Either a token, like the ones returned by [Stripe.js](https://stripe.com/docs/js), or a dictionary containing a user's bank account details.
@immutable
final class PostCustomersCustomerRequestBankAccount {
  const PostCustomersCustomerRequestBankAccount({this.customerPaymentSourceBankAccount = const Omittable.absent(),
this.string = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerRequestBankAccount._({required this.rawValue, required this.customerPaymentSourceBankAccount,
required this.string,});
  factory PostCustomersCustomerRequestBankAccount.fromJson(Object? json) => PostCustomersCustomerRequestBankAccount._(
    rawValue: Omittable(json),
    customerPaymentSourceBankAccount: parseAnyOfVariant<CustomerPaymentSourceBankAccount>(json, (value) => CustomerPaymentSourceBankAccount.fromJson(value! as Map<String, dynamic>)),
string: parseAnyOfVariant<String>(json, (value) => value! as String),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CustomerPaymentSourceBankAccount> customerPaymentSourceBankAccount;
final Omittable<String> string;

  /// Whether at least one known variant matched.
  bool get isValid => customerPaymentSourceBankAccount.isPresent || string.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (customerPaymentSourceBankAccount.isPresent) customerPaymentSourceBankAccount.value?.toJson(),
if (string.isPresent) string.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerRequestBankAccount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerRequestBankAccount(${toJson()})';
}
