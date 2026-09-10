// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer_payment_source_bank_account3.dart';/// Either a token, like the ones returned by [Stripe.js](https://stripe.com/docs/js), or a dictionary containing a user's bank account details.
@immutable
final class PostCustomersCustomerCardsRequestBankAccount {
  const PostCustomersCustomerCardsRequestBankAccount({this.customerPaymentSourceBankAccount3 = const Omittable.absent(),
this.string = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerCardsRequestBankAccount._({required this.rawValue, required this.customerPaymentSourceBankAccount3,
required this.string,});
  factory PostCustomersCustomerCardsRequestBankAccount.fromJson(Object? json) => PostCustomersCustomerCardsRequestBankAccount._(
    rawValue: Omittable(json),
    customerPaymentSourceBankAccount3: parseAnyOfVariant<CustomerPaymentSourceBankAccount3>(json, (value) => CustomerPaymentSourceBankAccount3.fromJson(value! as Map<String, dynamic>)),
string: parseAnyOfVariant<String>(json, (value) => value! as String),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CustomerPaymentSourceBankAccount3> customerPaymentSourceBankAccount3;
final Omittable<String> string;

  /// Whether at least one known variant matched.
  bool get isValid => customerPaymentSourceBankAccount3.isPresent || string.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (customerPaymentSourceBankAccount3.isPresent) customerPaymentSourceBankAccount3.value?.toJson(),
if (string.isPresent) string.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerCardsRequestBankAccount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerCardsRequestBankAccount(${toJson()})';
}
