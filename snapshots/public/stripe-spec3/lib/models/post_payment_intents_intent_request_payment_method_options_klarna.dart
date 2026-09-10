// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param54.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsKlarnaVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsKlarnaVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsKlarnaVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsKlarnaVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsKlarnaVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsKlarnaVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsKlarnaVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsKlarnaVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsKlarnaVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsKlarna {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsKlarna({this.paymentMethodOptionsParam54 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsKlarnaVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsKlarna._({required this.rawValue, required this.paymentMethodOptionsParam54,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsKlarnaVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsKlarna.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsKlarna._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam54: parseAnyOfVariant<PaymentMethodOptionsParam54>(json, (value) => PaymentMethodOptionsParam54.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsKlarnaVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsKlarnaVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsKlarnaVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam54> paymentMethodOptionsParam54;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsKlarnaVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsKlarnaVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam54.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsKlarnaVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam54.isPresent) paymentMethodOptionsParam54.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsKlarnaVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsKlarnaVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsKlarna && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsKlarna(${toJson()})';
}
