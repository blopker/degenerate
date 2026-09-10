// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2 {const PostPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2._(this.value);

factory PostPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2 $empty = PostPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2._('');

static const List<PostPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentRequestHooksInputsTaxCalculation {
  const PostPaymentIntentsIntentRequestHooksInputsTaxCalculation({this.string = const Omittable.absent(),
this.postPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestHooksInputsTaxCalculation._({required this.rawValue, required this.string,
required this.postPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2,});
  factory PostPaymentIntentsIntentRequestHooksInputsTaxCalculation.fromJson(Object? json) => PostPaymentIntentsIntentRequestHooksInputsTaxCalculation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2>(json, (value) => PostPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2> postPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2.isPresent) postPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestHooksInputsTaxCalculation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestHooksInputsTaxCalculation(${toJson()})';
}
