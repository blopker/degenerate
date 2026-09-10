// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculationVariant2 {const PostPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculationVariant2._(this.value);

factory PostPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculationVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculationVariant2._(json),
};}

static const PostPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculationVariant2 $empty = PostPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculationVariant2._('');

static const List<PostPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculationVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculationVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculationVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculation {
  const PostPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculation({this.string = const Omittable.absent(),
this.postPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculation._({required this.rawValue, required this.string,
required this.postPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculationVariant2,});
  factory PostPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculation.fromJson(Object? json) => PostPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculationVariant2: parseAnyOfVariant<PostPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculationVariant2>(json, (value) => PostPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculationVariant2> postPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculationVariant2.isPresent) postPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculation(${toJson()})';
}
