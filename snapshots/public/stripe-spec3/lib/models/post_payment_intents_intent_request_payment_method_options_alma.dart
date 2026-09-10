// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param41.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsAlmaVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsAlmaVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsAlmaVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsAlmaVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsAlmaVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsAlmaVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsAlmaVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsAlmaVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsAlmaVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsAlma {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsAlma({this.paymentMethodOptionsParam41 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsAlmaVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsAlma._({required this.rawValue, required this.paymentMethodOptionsParam41,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsAlmaVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsAlma.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsAlma._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam41: parseAnyOfVariant<PaymentMethodOptionsParam41>(json, (value) => PaymentMethodOptionsParam41.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsAlmaVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsAlmaVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsAlmaVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam41> paymentMethodOptionsParam41;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsAlmaVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsAlmaVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam41.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsAlmaVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam41.isPresent) paymentMethodOptionsParam41.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsAlmaVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsAlmaVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsAlma && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsAlma(${toJson()})';
}
