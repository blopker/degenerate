// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer_payment_source_bank_account4.dart';/// Either a token, like the ones returned by [Stripe.js](https://stripe.com/docs/js), or a dictionary containing a user's bank account details.
@immutable
final class PostCustomersCustomerSourcesRequestBankAccount {
  const PostCustomersCustomerSourcesRequestBankAccount({this.customerPaymentSourceBankAccount4 = const Omittable.absent(),
this.string = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSourcesRequestBankAccount._({required this.rawValue, required this.customerPaymentSourceBankAccount4,
required this.string,});
  factory PostCustomersCustomerSourcesRequestBankAccount.fromJson(Object? json) => PostCustomersCustomerSourcesRequestBankAccount._(
    rawValue: Omittable(json),
    customerPaymentSourceBankAccount4: parseAnyOfVariant<CustomerPaymentSourceBankAccount4>(json, (value) => CustomerPaymentSourceBankAccount4.fromJson(value! as Map<String, dynamic>)),
string: parseAnyOfVariant<String>(json, (value) => value! as String),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CustomerPaymentSourceBankAccount4> customerPaymentSourceBankAccount4;
final Omittable<String> string;

  /// Whether at least one known variant matched.
  bool get isValid => customerPaymentSourceBankAccount4.isPresent || string.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (customerPaymentSourceBankAccount4.isPresent) customerPaymentSourceBankAccount4.value?.toJson(),
if (string.isPresent) string.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSourcesRequestBankAccount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSourcesRequestBankAccount(${toJson()})';
}
