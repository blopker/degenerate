// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostProductsRequestDefaultPriceDataCurrencyOptionsValueTiersUpToVariant1 {const PostProductsRequestDefaultPriceDataCurrencyOptionsValueTiersUpToVariant1._(this.value);

factory PostProductsRequestDefaultPriceDataCurrencyOptionsValueTiersUpToVariant1.fromJson(String json) {return switch (json) {
  'inf' => inf,
  _ => PostProductsRequestDefaultPriceDataCurrencyOptionsValueTiersUpToVariant1._(json),
};}

static const PostProductsRequestDefaultPriceDataCurrencyOptionsValueTiersUpToVariant1 inf = PostProductsRequestDefaultPriceDataCurrencyOptionsValueTiersUpToVariant1._('inf');

static const List<PostProductsRequestDefaultPriceDataCurrencyOptionsValueTiersUpToVariant1> values = [inf];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostProductsRequestDefaultPriceDataCurrencyOptionsValueTiersUpToVariant1 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostProductsRequestDefaultPriceDataCurrencyOptionsValueTiersUpToVariant1($value)';}
}

@immutable
final class PostProductsRequestDefaultPriceDataCurrencyOptionsValueTiersUpTo {
  const PostProductsRequestDefaultPriceDataCurrencyOptionsValueTiersUpTo({this.postProductsRequestDefaultPriceDataCurrencyOptionsValueTiersUpToVariant1 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostProductsRequestDefaultPriceDataCurrencyOptionsValueTiersUpTo._({required this.rawValue, required this.postProductsRequestDefaultPriceDataCurrencyOptionsValueTiersUpToVariant1,
required this.$int,});
  factory PostProductsRequestDefaultPriceDataCurrencyOptionsValueTiersUpTo.fromJson(Object? json) => PostProductsRequestDefaultPriceDataCurrencyOptionsValueTiersUpTo._(
    rawValue: Omittable(json),
    postProductsRequestDefaultPriceDataCurrencyOptionsValueTiersUpToVariant1: parseAnyOfVariant<PostProductsRequestDefaultPriceDataCurrencyOptionsValueTiersUpToVariant1>(json, (value) => PostProductsRequestDefaultPriceDataCurrencyOptionsValueTiersUpToVariant1.fromJson(value! as String)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PostProductsRequestDefaultPriceDataCurrencyOptionsValueTiersUpToVariant1> postProductsRequestDefaultPriceDataCurrencyOptionsValueTiersUpToVariant1;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => postProductsRequestDefaultPriceDataCurrencyOptionsValueTiersUpToVariant1.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (postProductsRequestDefaultPriceDataCurrencyOptionsValueTiersUpToVariant1.isPresent) postProductsRequestDefaultPriceDataCurrencyOptionsValueTiersUpToVariant1.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostProductsRequestDefaultPriceDataCurrencyOptionsValueTiersUpTo && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostProductsRequestDefaultPriceDataCurrencyOptionsValueTiersUpTo(${toJson()})';
}
