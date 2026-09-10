// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2 {const PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2._(this.value);

factory PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2._(json),
};}

static const PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2 $empty = PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2._('');

static const List<PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmount {
  const PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmount({this.$int = const Omittable.absent(),
this.postPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmount._({required this.rawValue, required this.$int,
required this.postPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2,});
  factory PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmount.fromJson(Object? json) => PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmount._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2: parseAnyOfVariant<PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2>(json, (value) => PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2> postPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2.isPresent) postPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmount(${toJson()})';
}
