// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer_payment_source_bank_account2.dart';/// Either a token, like the ones returned by [Stripe.js](https://stripe.com/docs/js), or a dictionary containing a user's bank account details.
@immutable
final class PostCustomersCustomerBankAccountsRequestBankAccount {
  const PostCustomersCustomerBankAccountsRequestBankAccount({this.customerPaymentSourceBankAccount2 = const Omittable.absent(),
this.string = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerBankAccountsRequestBankAccount._({required this.rawValue, required this.customerPaymentSourceBankAccount2,
required this.string,});
  factory PostCustomersCustomerBankAccountsRequestBankAccount.fromJson(Object? json) => PostCustomersCustomerBankAccountsRequestBankAccount._(
    rawValue: Omittable(json),
    customerPaymentSourceBankAccount2: parseAnyOfVariant<CustomerPaymentSourceBankAccount2>(json, (value) => CustomerPaymentSourceBankAccount2.fromJson(value! as Map<String, dynamic>)),
string: parseAnyOfVariant<String>(json, (value) => value! as String),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CustomerPaymentSourceBankAccount2> customerPaymentSourceBankAccount2;
final Omittable<String> string;

  /// Whether at least one known variant matched.
  bool get isValid => customerPaymentSourceBankAccount2.isPresent || string.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (customerPaymentSourceBankAccount2.isPresent) customerPaymentSourceBankAccount2.value?.toJson(),
if (string.isPresent) string.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerBankAccountsRequestBankAccount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerBankAccountsRequestBankAccount(${toJson()})';
}
