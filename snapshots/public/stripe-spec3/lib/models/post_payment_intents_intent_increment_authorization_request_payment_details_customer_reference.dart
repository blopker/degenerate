// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReferenceVariant2 {const PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReferenceVariant2._(this.value);

factory PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReferenceVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReferenceVariant2._(json),
}; }

static const PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReferenceVariant2 $empty = PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReferenceVariant2._('');

static const List<PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReferenceVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReferenceVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReferenceVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReference {
  const PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReference({this.string = const Omittable.absent(),
this.postPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReferenceVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReference._({required this.rawValue, required this.string,
required this.postPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReferenceVariant2,});
  factory PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReference.fromJson(Object? json) => PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReference._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReferenceVariant2: parseAnyOfVariant<PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReferenceVariant2>(json, (value) => PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReferenceVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReferenceVariant2> postPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReferenceVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReferenceVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReferenceVariant2.isPresent) postPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReferenceVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReference && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReference(${toJson()})';
}
