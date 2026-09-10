// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsRequestHooksInputsTaxCalculationVariant2 {const PostPaymentIntentsRequestHooksInputsTaxCalculationVariant2._(this.value);

factory PostPaymentIntentsRequestHooksInputsTaxCalculationVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestHooksInputsTaxCalculationVariant2._(json),
};}

static const PostPaymentIntentsRequestHooksInputsTaxCalculationVariant2 $empty = PostPaymentIntentsRequestHooksInputsTaxCalculationVariant2._('');

static const List<PostPaymentIntentsRequestHooksInputsTaxCalculationVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestHooksInputsTaxCalculationVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestHooksInputsTaxCalculationVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestHooksInputsTaxCalculation {
  const PostPaymentIntentsRequestHooksInputsTaxCalculation({this.string = const Omittable.absent(),
this.postPaymentIntentsRequestHooksInputsTaxCalculationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestHooksInputsTaxCalculation._({required this.rawValue, required this.string,
required this.postPaymentIntentsRequestHooksInputsTaxCalculationVariant2,});
  factory PostPaymentIntentsRequestHooksInputsTaxCalculation.fromJson(Object? json) => PostPaymentIntentsRequestHooksInputsTaxCalculation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postPaymentIntentsRequestHooksInputsTaxCalculationVariant2: parseAnyOfVariant<PostPaymentIntentsRequestHooksInputsTaxCalculationVariant2>(json, (value) => PostPaymentIntentsRequestHooksInputsTaxCalculationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostPaymentIntentsRequestHooksInputsTaxCalculationVariant2> postPaymentIntentsRequestHooksInputsTaxCalculationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postPaymentIntentsRequestHooksInputsTaxCalculationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postPaymentIntentsRequestHooksInputsTaxCalculationVariant2.isPresent) postPaymentIntentsRequestHooksInputsTaxCalculationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestHooksInputsTaxCalculation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestHooksInputsTaxCalculation(${toJson()})';
}
