// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostQuotesQuoteRequestLineItemsTaxRatesVariant2 {const PostQuotesQuoteRequestLineItemsTaxRatesVariant2._(this.value);

factory PostQuotesQuoteRequestLineItemsTaxRatesVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostQuotesQuoteRequestLineItemsTaxRatesVariant2._(json),
};}

static const PostQuotesQuoteRequestLineItemsTaxRatesVariant2 $empty = PostQuotesQuoteRequestLineItemsTaxRatesVariant2._('');

static const List<PostQuotesQuoteRequestLineItemsTaxRatesVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostQuotesQuoteRequestLineItemsTaxRatesVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostQuotesQuoteRequestLineItemsTaxRatesVariant2($value)';}
}

@immutable
final class PostQuotesQuoteRequestLineItemsTaxRates {
  const PostQuotesQuoteRequestLineItemsTaxRates({this.listString = const Omittable.absent(),
this.postQuotesQuoteRequestLineItemsTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostQuotesQuoteRequestLineItemsTaxRates._({required this.rawValue, required this.listString,
required this.postQuotesQuoteRequestLineItemsTaxRatesVariant2,});
  factory PostQuotesQuoteRequestLineItemsTaxRates.fromJson(Object? json) => PostQuotesQuoteRequestLineItemsTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postQuotesQuoteRequestLineItemsTaxRatesVariant2: parseAnyOfVariant<PostQuotesQuoteRequestLineItemsTaxRatesVariant2>(json, (value) => PostQuotesQuoteRequestLineItemsTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostQuotesQuoteRequestLineItemsTaxRatesVariant2> postQuotesQuoteRequestLineItemsTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postQuotesQuoteRequestLineItemsTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postQuotesQuoteRequestLineItemsTaxRatesVariant2.isPresent) postQuotesQuoteRequestLineItemsTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostQuotesQuoteRequestLineItemsTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostQuotesQuoteRequestLineItemsTaxRates(${toJson()})';
}
