// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2 {const PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2._(this.value);

factory PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2._(json),
}; }

static const PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2 $empty = PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2._('');

static const List<PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2($value)'; } 
 }

@immutable
final class PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIds {
  const PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIds({this.listString = const Omittable.absent(),
this.postCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIds._({required this.rawValue, required this.listString,
required this.postCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2,});
  factory PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIds.fromJson(Object? json) => PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIds._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2: parseAnyOfVariant<PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2>(json, (value) => PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2> postCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2.isPresent) postCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCheckoutSessionsRequestInvoiceCreationInvoiceDataAccountTaxIds(${toJson()})';
}
