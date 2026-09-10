// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param13.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsSwishVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsSwishVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsSwishVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsSwishVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsSwishVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsSwishVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsSwishVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsSwishVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsSwishVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsSwish {
  const PostPaymentIntentsRequestPaymentMethodOptionsSwish({this.paymentIntentPaymentMethodOptionsParam13 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsSwishVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsSwish._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam13,
required this.postPaymentIntentsRequestPaymentMethodOptionsSwishVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsSwish.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsSwish._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam13: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam13>(json, (value) => PaymentIntentPaymentMethodOptionsParam13.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsSwishVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsSwishVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsSwishVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam13> paymentIntentPaymentMethodOptionsParam13;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsSwishVariant2> postPaymentIntentsRequestPaymentMethodOptionsSwishVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam13.isPresent || postPaymentIntentsRequestPaymentMethodOptionsSwishVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam13.isPresent) paymentIntentPaymentMethodOptionsParam13.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsSwishVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsSwishVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsSwish && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsSwish(${toJson()})';
}
