// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostProductsIdRequestUnitLabelVariant2 {const PostProductsIdRequestUnitLabelVariant2._(this.value);

factory PostProductsIdRequestUnitLabelVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostProductsIdRequestUnitLabelVariant2._(json),
};}

static const PostProductsIdRequestUnitLabelVariant2 $empty = PostProductsIdRequestUnitLabelVariant2._('');

static const List<PostProductsIdRequestUnitLabelVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostProductsIdRequestUnitLabelVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostProductsIdRequestUnitLabelVariant2($value)';}
}
/// A label that represents units of this product. When set, this will be included in customers' receipts, invoices, Checkout, and the customer portal. May only be set if `type=service`.
@immutable
final class PostProductsIdRequestUnitLabel {
  const PostProductsIdRequestUnitLabel({this.string = const Omittable.absent(),
this.postProductsIdRequestUnitLabelVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostProductsIdRequestUnitLabel._({required this.rawValue, required this.string,
required this.postProductsIdRequestUnitLabelVariant2,});
  factory PostProductsIdRequestUnitLabel.fromJson(Object? json) => PostProductsIdRequestUnitLabel._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postProductsIdRequestUnitLabelVariant2: parseAnyOfVariant<PostProductsIdRequestUnitLabelVariant2>(json, (value) => PostProductsIdRequestUnitLabelVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostProductsIdRequestUnitLabelVariant2> postProductsIdRequestUnitLabelVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postProductsIdRequestUnitLabelVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postProductsIdRequestUnitLabelVariant2.isPresent) postProductsIdRequestUnitLabelVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostProductsIdRequestUnitLabel && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostProductsIdRequestUnitLabel(${toJson()})';
}
