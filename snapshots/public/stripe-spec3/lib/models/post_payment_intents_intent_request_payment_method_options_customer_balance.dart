// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param20.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalance {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalance({this.paymentIntentPaymentMethodOptionsParam20 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalance._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam20,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalance.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalance._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam20: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam20>(json, (value) => PaymentIntentPaymentMethodOptionsParam20.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam20> paymentIntentPaymentMethodOptionsParam20;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam20.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam20.isPresent) paymentIntentPaymentMethodOptionsParam20.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalance && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalance(${toJson()})';
}
