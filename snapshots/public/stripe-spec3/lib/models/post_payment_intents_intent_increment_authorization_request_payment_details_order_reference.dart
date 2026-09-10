// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReferenceVariant2 {const PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReferenceVariant2._(this.value);

factory PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReferenceVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReferenceVariant2._(json),
}; }

static const PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReferenceVariant2 $empty = PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReferenceVariant2._('');

static const List<PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReferenceVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReferenceVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReferenceVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReference {
  const PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReference({this.string = const Omittable.absent(),
this.postPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReferenceVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReference._({required this.rawValue, required this.string,
required this.postPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReferenceVariant2,});
  factory PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReference.fromJson(Object? json) => PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReference._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReferenceVariant2: parseAnyOfVariant<PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReferenceVariant2>(json, (value) => PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReferenceVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReferenceVariant2> postPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReferenceVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReferenceVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReferenceVariant2.isPresent) postPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReferenceVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReference && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReference(${toJson()})';
}
