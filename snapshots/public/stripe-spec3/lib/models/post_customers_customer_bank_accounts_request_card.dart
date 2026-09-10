// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer_payment_source_card3.dart';/// A token, like the ones returned by [Stripe.js](https://stripe.com/docs/js).
@immutable
final class PostCustomersCustomerBankAccountsRequestCard {
  const PostCustomersCustomerBankAccountsRequestCard({this.customerPaymentSourceCard3 = const Omittable.absent(),
this.string = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerBankAccountsRequestCard._({required this.rawValue, required this.customerPaymentSourceCard3,
required this.string,});
  factory PostCustomersCustomerBankAccountsRequestCard.fromJson(Object? json) => PostCustomersCustomerBankAccountsRequestCard._(
    rawValue: Omittable(json),
    customerPaymentSourceCard3: parseAnyOfVariant<CustomerPaymentSourceCard3>(json, (value) => CustomerPaymentSourceCard3.fromJson(value! as Map<String, dynamic>)),
string: parseAnyOfVariant<String>(json, (value) => value! as String),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CustomerPaymentSourceCard3> customerPaymentSourceCard3;
final Omittable<String> string;

  /// Whether at least one known variant matched.
  bool get isValid => customerPaymentSourceCard3.isPresent || string.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (customerPaymentSourceCard3.isPresent) customerPaymentSourceCard3.value?.toJson(),
if (string.isPresent) string.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerBankAccountsRequestCard && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerBankAccountsRequestCard(${toJson()})';
}
