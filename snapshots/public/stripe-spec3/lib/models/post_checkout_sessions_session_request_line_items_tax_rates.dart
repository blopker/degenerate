// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCheckoutSessionsSessionRequestLineItemsTaxRatesVariant2 {const PostCheckoutSessionsSessionRequestLineItemsTaxRatesVariant2._(this.value);

factory PostCheckoutSessionsSessionRequestLineItemsTaxRatesVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCheckoutSessionsSessionRequestLineItemsTaxRatesVariant2._(json),
};}

static const PostCheckoutSessionsSessionRequestLineItemsTaxRatesVariant2 $empty = PostCheckoutSessionsSessionRequestLineItemsTaxRatesVariant2._('');

static const List<PostCheckoutSessionsSessionRequestLineItemsTaxRatesVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCheckoutSessionsSessionRequestLineItemsTaxRatesVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCheckoutSessionsSessionRequestLineItemsTaxRatesVariant2($value)';}
}

@immutable
final class PostCheckoutSessionsSessionRequestLineItemsTaxRates {
  const PostCheckoutSessionsSessionRequestLineItemsTaxRates({this.listString = const Omittable.absent(),
this.postCheckoutSessionsSessionRequestLineItemsTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCheckoutSessionsSessionRequestLineItemsTaxRates._({required this.rawValue, required this.listString,
required this.postCheckoutSessionsSessionRequestLineItemsTaxRatesVariant2,});
  factory PostCheckoutSessionsSessionRequestLineItemsTaxRates.fromJson(Object? json) => PostCheckoutSessionsSessionRequestLineItemsTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postCheckoutSessionsSessionRequestLineItemsTaxRatesVariant2: parseAnyOfVariant<PostCheckoutSessionsSessionRequestLineItemsTaxRatesVariant2>(json, (value) => PostCheckoutSessionsSessionRequestLineItemsTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostCheckoutSessionsSessionRequestLineItemsTaxRatesVariant2> postCheckoutSessionsSessionRequestLineItemsTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postCheckoutSessionsSessionRequestLineItemsTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postCheckoutSessionsSessionRequestLineItemsTaxRatesVariant2.isPresent) postCheckoutSessionsSessionRequestLineItemsTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCheckoutSessionsSessionRequestLineItemsTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCheckoutSessionsSessionRequestLineItemsTaxRates(${toJson()})';
}
