// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2 {const PostPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2._(this.value);

factory PostPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2._(json),
}; }

static const PostPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2 $empty = PostPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2._('');

static const List<PostPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2($value)'; } 
 }

@immutable
final class PostPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIds {
  const PostPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIds({this.listString = const Omittable.absent(),
this.postPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIds._({required this.rawValue, required this.listString,
required this.postPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2,});
  factory PostPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIds.fromJson(Object? json) => PostPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIds._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2: parseAnyOfVariant<PostPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2>(json, (value) => PostPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2> postPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2.isPresent) postPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIds(${toJson()})';
}
