// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTaxCalculationVariant2 {const PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTaxCalculationVariant2._(this.value);

factory PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTaxCalculationVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTaxCalculationVariant2._(json),
}; }

static const PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTaxCalculationVariant2 $empty = PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTaxCalculationVariant2._('');

static const List<PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTaxCalculationVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTaxCalculationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTaxCalculationVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTaxCalculation {
  const PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTaxCalculation({this.string = const Omittable.absent(),
this.postPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTaxCalculationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTaxCalculation._({required this.rawValue, required this.string,
required this.postPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTaxCalculationVariant2,});
  factory PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTaxCalculation.fromJson(Object? json) => PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTaxCalculation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTaxCalculationVariant2: parseAnyOfVariant<PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTaxCalculationVariant2>(json, (value) => PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTaxCalculationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTaxCalculationVariant2> postPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTaxCalculationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTaxCalculationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTaxCalculationVariant2.isPresent) postPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTaxCalculationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTaxCalculation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTaxCalculation(${toJson()})';
}
