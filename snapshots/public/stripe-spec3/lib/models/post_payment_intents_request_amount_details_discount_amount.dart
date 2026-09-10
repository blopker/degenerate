// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsRequestAmountDetailsDiscountAmountVariant2 {const PostPaymentIntentsRequestAmountDetailsDiscountAmountVariant2._(this.value);

factory PostPaymentIntentsRequestAmountDetailsDiscountAmountVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestAmountDetailsDiscountAmountVariant2._(json),
};}

static const PostPaymentIntentsRequestAmountDetailsDiscountAmountVariant2 $empty = PostPaymentIntentsRequestAmountDetailsDiscountAmountVariant2._('');

static const List<PostPaymentIntentsRequestAmountDetailsDiscountAmountVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestAmountDetailsDiscountAmountVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestAmountDetailsDiscountAmountVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestAmountDetailsDiscountAmount {
  const PostPaymentIntentsRequestAmountDetailsDiscountAmount({this.$int = const Omittable.absent(),
this.postPaymentIntentsRequestAmountDetailsDiscountAmountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestAmountDetailsDiscountAmount._({required this.rawValue, required this.$int,
required this.postPaymentIntentsRequestAmountDetailsDiscountAmountVariant2,});
  factory PostPaymentIntentsRequestAmountDetailsDiscountAmount.fromJson(Object? json) => PostPaymentIntentsRequestAmountDetailsDiscountAmount._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postPaymentIntentsRequestAmountDetailsDiscountAmountVariant2: parseAnyOfVariant<PostPaymentIntentsRequestAmountDetailsDiscountAmountVariant2>(json, (value) => PostPaymentIntentsRequestAmountDetailsDiscountAmountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostPaymentIntentsRequestAmountDetailsDiscountAmountVariant2> postPaymentIntentsRequestAmountDetailsDiscountAmountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postPaymentIntentsRequestAmountDetailsDiscountAmountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postPaymentIntentsRequestAmountDetailsDiscountAmountVariant2.isPresent) postPaymentIntentsRequestAmountDetailsDiscountAmountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestAmountDetailsDiscountAmount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestAmountDetailsDiscountAmount(${toJson()})';
}
