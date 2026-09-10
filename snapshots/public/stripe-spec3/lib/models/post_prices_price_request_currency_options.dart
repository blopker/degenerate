// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_prices_price_request_currency_options_variant1_value.dart';@immutable final class PostPricesPriceRequestCurrencyOptionsVariant2 {const PostPricesPriceRequestCurrencyOptionsVariant2._(this.value);

factory PostPricesPriceRequestCurrencyOptionsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPricesPriceRequestCurrencyOptionsVariant2._(json),
}; }

static const PostPricesPriceRequestCurrencyOptionsVariant2 $empty = PostPricesPriceRequestCurrencyOptionsVariant2._('');

static const List<PostPricesPriceRequestCurrencyOptionsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPricesPriceRequestCurrencyOptionsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPricesPriceRequestCurrencyOptionsVariant2($value)'; } 
 }
/// Prices defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
@immutable
final class PostPricesPriceRequestCurrencyOptions {
  const PostPricesPriceRequestCurrencyOptions({this.mapStringPostPricesPriceRequestCurrencyOptionsVariant1Value = const Omittable.absent(),
this.postPricesPriceRequestCurrencyOptionsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPricesPriceRequestCurrencyOptions._({required this.rawValue, required this.mapStringPostPricesPriceRequestCurrencyOptionsVariant1Value,
required this.postPricesPriceRequestCurrencyOptionsVariant2,});
  factory PostPricesPriceRequestCurrencyOptions.fromJson(Object? json) => PostPricesPriceRequestCurrencyOptions._(
    rawValue: Omittable(json),
    mapStringPostPricesPriceRequestCurrencyOptionsVariant1Value: parseAnyOfVariant<Map<String, PostPricesPriceRequestCurrencyOptionsVariant1Value>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, PostPricesPriceRequestCurrencyOptionsVariant1Value.fromJson(v as Map<String, dynamic>)))),
postPricesPriceRequestCurrencyOptionsVariant2: parseAnyOfVariant<PostPricesPriceRequestCurrencyOptionsVariant2>(json, (value) => PostPricesPriceRequestCurrencyOptionsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, PostPricesPriceRequestCurrencyOptionsVariant1Value>> mapStringPostPricesPriceRequestCurrencyOptionsVariant1Value;
final Omittable<PostPricesPriceRequestCurrencyOptionsVariant2> postPricesPriceRequestCurrencyOptionsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringPostPricesPriceRequestCurrencyOptionsVariant1Value.isPresent || postPricesPriceRequestCurrencyOptionsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringPostPricesPriceRequestCurrencyOptionsVariant1Value.isPresent) mapStringPostPricesPriceRequestCurrencyOptionsVariant1Value.value?.map((k, v) => MapEntry(k, v.toJson())),
if (postPricesPriceRequestCurrencyOptionsVariant2.isPresent) postPricesPriceRequestCurrencyOptionsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPricesPriceRequestCurrencyOptions && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPricesPriceRequestCurrencyOptions(${toJson()})';
}
