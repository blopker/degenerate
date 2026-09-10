// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'optional_fields_shipping2.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestShippingVariant2 {const PostPaymentIntentsIntentConfirmRequestShippingVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestShippingVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestShippingVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestShippingVariant2 $empty = PostPaymentIntentsIntentConfirmRequestShippingVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestShippingVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestShippingVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestShippingVariant2($value)'; } 
 }
/// Shipping information for this PaymentIntent.
@immutable
final class PostPaymentIntentsIntentConfirmRequestShipping {
  const PostPaymentIntentsIntentConfirmRequestShipping({this.optionalFieldsShipping2 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestShippingVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestShipping._({required this.rawValue, required this.optionalFieldsShipping2,
required this.postPaymentIntentsIntentConfirmRequestShippingVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestShipping.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestShipping._(
    rawValue: Omittable(json),
    optionalFieldsShipping2: parseAnyOfVariant<OptionalFieldsShipping2>(json, (value) => OptionalFieldsShipping2.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestShippingVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestShippingVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestShippingVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<OptionalFieldsShipping2> optionalFieldsShipping2;
final Omittable<PostPaymentIntentsIntentConfirmRequestShippingVariant2> postPaymentIntentsIntentConfirmRequestShippingVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => optionalFieldsShipping2.isPresent || postPaymentIntentsIntentConfirmRequestShippingVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (optionalFieldsShipping2.isPresent) optionalFieldsShipping2.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestShippingVariant2.isPresent) postPaymentIntentsIntentConfirmRequestShippingVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestShipping && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestShipping(${toJson()})';
}
