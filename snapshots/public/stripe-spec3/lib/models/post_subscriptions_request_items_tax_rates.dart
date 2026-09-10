// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionsRequestItemsTaxRatesVariant2 {const PostSubscriptionsRequestItemsTaxRatesVariant2._(this.value);

factory PostSubscriptionsRequestItemsTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsRequestItemsTaxRatesVariant2._(json),
}; }

static const PostSubscriptionsRequestItemsTaxRatesVariant2 $empty = PostSubscriptionsRequestItemsTaxRatesVariant2._('');

static const List<PostSubscriptionsRequestItemsTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsRequestItemsTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsRequestItemsTaxRatesVariant2($value)'; } 
 }

@immutable
final class PostSubscriptionsRequestItemsTaxRates {
  const PostSubscriptionsRequestItemsTaxRates({this.listString = const Omittable.absent(),
this.postSubscriptionsRequestItemsTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsRequestItemsTaxRates._({required this.rawValue, required this.listString,
required this.postSubscriptionsRequestItemsTaxRatesVariant2,});
  factory PostSubscriptionsRequestItemsTaxRates.fromJson(Object? json) => PostSubscriptionsRequestItemsTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postSubscriptionsRequestItemsTaxRatesVariant2: parseAnyOfVariant<PostSubscriptionsRequestItemsTaxRatesVariant2>(json, (value) => PostSubscriptionsRequestItemsTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostSubscriptionsRequestItemsTaxRatesVariant2> postSubscriptionsRequestItemsTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postSubscriptionsRequestItemsTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postSubscriptionsRequestItemsTaxRatesVariant2.isPresent) postSubscriptionsRequestItemsTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsRequestItemsTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsRequestItemsTaxRates(${toJson()})';
}
