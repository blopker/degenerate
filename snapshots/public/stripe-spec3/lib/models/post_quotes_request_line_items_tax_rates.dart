// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostQuotesRequestLineItemsTaxRatesVariant2 {const PostQuotesRequestLineItemsTaxRatesVariant2._(this.value);

factory PostQuotesRequestLineItemsTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostQuotesRequestLineItemsTaxRatesVariant2._(json),
}; }

static const PostQuotesRequestLineItemsTaxRatesVariant2 $empty = PostQuotesRequestLineItemsTaxRatesVariant2._('');

static const List<PostQuotesRequestLineItemsTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostQuotesRequestLineItemsTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostQuotesRequestLineItemsTaxRatesVariant2($value)'; } 
 }

@immutable
final class PostQuotesRequestLineItemsTaxRates {
  const PostQuotesRequestLineItemsTaxRates({this.listString = const Omittable.absent(),
this.postQuotesRequestLineItemsTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostQuotesRequestLineItemsTaxRates._({required this.rawValue, required this.listString,
required this.postQuotesRequestLineItemsTaxRatesVariant2,});
  factory PostQuotesRequestLineItemsTaxRates.fromJson(Object? json) => PostQuotesRequestLineItemsTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postQuotesRequestLineItemsTaxRatesVariant2: parseAnyOfVariant<PostQuotesRequestLineItemsTaxRatesVariant2>(json, (value) => PostQuotesRequestLineItemsTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostQuotesRequestLineItemsTaxRatesVariant2> postQuotesRequestLineItemsTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postQuotesRequestLineItemsTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postQuotesRequestLineItemsTaxRatesVariant2.isPresent) postQuotesRequestLineItemsTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostQuotesRequestLineItemsTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostQuotesRequestLineItemsTaxRates(${toJson()})';
}
