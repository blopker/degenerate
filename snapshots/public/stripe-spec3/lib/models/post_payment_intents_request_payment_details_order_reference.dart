// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2 {const PostPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2 $empty = PostPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2._('');

static const List<PostPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsRequestPaymentDetailsOrderReference {
  const PostPaymentIntentsRequestPaymentDetailsOrderReference({this.string = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentDetailsOrderReference._({required this.rawValue, required this.string,
required this.postPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2,});
  factory PostPaymentIntentsRequestPaymentDetailsOrderReference.fromJson(Object? json) => PostPaymentIntentsRequestPaymentDetailsOrderReference._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2>(json, (value) => PostPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2> postPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2.isPresent) postPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentDetailsOrderReference && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentDetailsOrderReference(${toJson()})';
}
