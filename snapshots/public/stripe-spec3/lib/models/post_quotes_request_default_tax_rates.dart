// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostQuotesRequestDefaultTaxRatesVariant2 {const PostQuotesRequestDefaultTaxRatesVariant2._(this.value);

factory PostQuotesRequestDefaultTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostQuotesRequestDefaultTaxRatesVariant2._(json),
}; }

static const PostQuotesRequestDefaultTaxRatesVariant2 $empty = PostQuotesRequestDefaultTaxRatesVariant2._('');

static const List<PostQuotesRequestDefaultTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostQuotesRequestDefaultTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostQuotesRequestDefaultTaxRatesVariant2($value)'; } 
 }
/// The tax rates that will apply to any line item that does not have `tax_rates` set.
@immutable
final class PostQuotesRequestDefaultTaxRates {
  const PostQuotesRequestDefaultTaxRates({this.listString = const Omittable.absent(),
this.postQuotesRequestDefaultTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostQuotesRequestDefaultTaxRates._({required this.rawValue, required this.listString,
required this.postQuotesRequestDefaultTaxRatesVariant2,});
  factory PostQuotesRequestDefaultTaxRates.fromJson(Object? json) => PostQuotesRequestDefaultTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postQuotesRequestDefaultTaxRatesVariant2: parseAnyOfVariant<PostQuotesRequestDefaultTaxRatesVariant2>(json, (value) => PostQuotesRequestDefaultTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostQuotesRequestDefaultTaxRatesVariant2> postQuotesRequestDefaultTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postQuotesRequestDefaultTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postQuotesRequestDefaultTaxRatesVariant2.isPresent) postQuotesRequestDefaultTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostQuotesRequestDefaultTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostQuotesRequestDefaultTaxRates(${toJson()})';
}
