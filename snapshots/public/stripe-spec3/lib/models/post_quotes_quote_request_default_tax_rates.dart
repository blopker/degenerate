// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostQuotesQuoteRequestDefaultTaxRatesVariant2 {const PostQuotesQuoteRequestDefaultTaxRatesVariant2._(this.value);

factory PostQuotesQuoteRequestDefaultTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostQuotesQuoteRequestDefaultTaxRatesVariant2._(json),
}; }

static const PostQuotesQuoteRequestDefaultTaxRatesVariant2 $empty = PostQuotesQuoteRequestDefaultTaxRatesVariant2._('');

static const List<PostQuotesQuoteRequestDefaultTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostQuotesQuoteRequestDefaultTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostQuotesQuoteRequestDefaultTaxRatesVariant2($value)'; } 
 }
/// The tax rates that will apply to any line item that does not have `tax_rates` set.
@immutable
final class PostQuotesQuoteRequestDefaultTaxRates {
  const PostQuotesQuoteRequestDefaultTaxRates({this.listString = const Omittable.absent(),
this.postQuotesQuoteRequestDefaultTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostQuotesQuoteRequestDefaultTaxRates._({required this.rawValue, required this.listString,
required this.postQuotesQuoteRequestDefaultTaxRatesVariant2,});
  factory PostQuotesQuoteRequestDefaultTaxRates.fromJson(Object? json) => PostQuotesQuoteRequestDefaultTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postQuotesQuoteRequestDefaultTaxRatesVariant2: parseAnyOfVariant<PostQuotesQuoteRequestDefaultTaxRatesVariant2>(json, (value) => PostQuotesQuoteRequestDefaultTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostQuotesQuoteRequestDefaultTaxRatesVariant2> postQuotesQuoteRequestDefaultTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postQuotesQuoteRequestDefaultTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postQuotesQuoteRequestDefaultTaxRatesVariant2.isPresent) postQuotesQuoteRequestDefaultTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostQuotesQuoteRequestDefaultTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostQuotesQuoteRequestDefaultTaxRates(${toJson()})';
}
