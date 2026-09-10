// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPricesRequestCurrencyOptionsValueTiersUpToVariant1 {const PostPricesRequestCurrencyOptionsValueTiersUpToVariant1._(this.value);

factory PostPricesRequestCurrencyOptionsValueTiersUpToVariant1.fromJson(String json) { return switch (json) {
  'inf' => inf,
  _ => PostPricesRequestCurrencyOptionsValueTiersUpToVariant1._(json),
}; }

static const PostPricesRequestCurrencyOptionsValueTiersUpToVariant1 inf = PostPricesRequestCurrencyOptionsValueTiersUpToVariant1._('inf');

static const List<PostPricesRequestCurrencyOptionsValueTiersUpToVariant1> values = [inf];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPricesRequestCurrencyOptionsValueTiersUpToVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPricesRequestCurrencyOptionsValueTiersUpToVariant1($value)'; } 
 }

@immutable
final class PostPricesRequestCurrencyOptionsValueTiersUpTo {
  const PostPricesRequestCurrencyOptionsValueTiersUpTo({this.postPricesRequestCurrencyOptionsValueTiersUpToVariant1 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPricesRequestCurrencyOptionsValueTiersUpTo._({required this.rawValue, required this.postPricesRequestCurrencyOptionsValueTiersUpToVariant1,
required this.$int,});
  factory PostPricesRequestCurrencyOptionsValueTiersUpTo.fromJson(Object? json) => PostPricesRequestCurrencyOptionsValueTiersUpTo._(
    rawValue: Omittable(json),
    postPricesRequestCurrencyOptionsValueTiersUpToVariant1: parseAnyOfVariant<PostPricesRequestCurrencyOptionsValueTiersUpToVariant1>(json, (value) => PostPricesRequestCurrencyOptionsValueTiersUpToVariant1.fromJson(value! as String)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PostPricesRequestCurrencyOptionsValueTiersUpToVariant1> postPricesRequestCurrencyOptionsValueTiersUpToVariant1;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => postPricesRequestCurrencyOptionsValueTiersUpToVariant1.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (postPricesRequestCurrencyOptionsValueTiersUpToVariant1.isPresent) postPricesRequestCurrencyOptionsValueTiersUpToVariant1.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPricesRequestCurrencyOptionsValueTiersUpTo && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPricesRequestCurrencyOptionsValueTiersUpTo(${toJson()})';
}
