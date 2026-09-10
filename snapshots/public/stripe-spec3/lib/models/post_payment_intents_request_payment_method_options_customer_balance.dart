// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param6.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsCustomerBalanceVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsCustomerBalanceVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsCustomerBalanceVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsCustomerBalanceVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsCustomerBalanceVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsCustomerBalanceVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsCustomerBalanceVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsCustomerBalanceVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsCustomerBalanceVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsCustomerBalance {
  const PostPaymentIntentsRequestPaymentMethodOptionsCustomerBalance({this.paymentIntentPaymentMethodOptionsParam6 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsCustomerBalanceVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsCustomerBalance._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam6,
required this.postPaymentIntentsRequestPaymentMethodOptionsCustomerBalanceVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsCustomerBalance.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsCustomerBalance._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam6: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam6>(json, (value) => PaymentIntentPaymentMethodOptionsParam6.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsCustomerBalanceVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsCustomerBalanceVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsCustomerBalanceVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam6> paymentIntentPaymentMethodOptionsParam6;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsCustomerBalanceVariant2> postPaymentIntentsRequestPaymentMethodOptionsCustomerBalanceVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam6.isPresent || postPaymentIntentsRequestPaymentMethodOptionsCustomerBalanceVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam6.isPresent) paymentIntentPaymentMethodOptionsParam6.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsCustomerBalanceVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsCustomerBalanceVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsCustomerBalance && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsCustomerBalance(${toJson()})';
}
