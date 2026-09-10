// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param17.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsKlarnaVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsKlarnaVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsKlarnaVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsKlarnaVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsKlarnaVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsKlarnaVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsKlarnaVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsKlarnaVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsKlarnaVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsKlarna {
  const PostPaymentIntentsRequestPaymentMethodOptionsKlarna({this.paymentMethodOptionsParam17 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsKlarnaVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsKlarna._({required this.rawValue, required this.paymentMethodOptionsParam17,
required this.postPaymentIntentsRequestPaymentMethodOptionsKlarnaVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsKlarna.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsKlarna._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam17: parseAnyOfVariant<PaymentMethodOptionsParam17>(json, (value) => PaymentMethodOptionsParam17.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsKlarnaVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsKlarnaVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsKlarnaVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam17> paymentMethodOptionsParam17;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsKlarnaVariant2> postPaymentIntentsRequestPaymentMethodOptionsKlarnaVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam17.isPresent || postPaymentIntentsRequestPaymentMethodOptionsKlarnaVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam17.isPresent) paymentMethodOptionsParam17.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsKlarnaVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsKlarnaVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsKlarna && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsKlarna(${toJson()})';
}
