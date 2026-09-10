// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesInvoiceUpdateLinesRequestInvoiceMetadataVariant2 {const PostInvoicesInvoiceUpdateLinesRequestInvoiceMetadataVariant2._(this.value);

factory PostInvoicesInvoiceUpdateLinesRequestInvoiceMetadataVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceUpdateLinesRequestInvoiceMetadataVariant2._(json),
};}

static const PostInvoicesInvoiceUpdateLinesRequestInvoiceMetadataVariant2 $empty = PostInvoicesInvoiceUpdateLinesRequestInvoiceMetadataVariant2._('');

static const List<PostInvoicesInvoiceUpdateLinesRequestInvoiceMetadataVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesInvoiceUpdateLinesRequestInvoiceMetadataVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesInvoiceUpdateLinesRequestInvoiceMetadataVariant2($value)';}
}
/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`. For [type=subscription](https://docs.stripe.com/api/invoices/line_item#invoice_line_item_object-type) line items, the incoming metadata specified on the request is directly used to set this value, in contrast to [type=invoiceitem](api/invoices/line_item#invoice_line_item_object-type) line items, where any existing metadata on the invoice line is merged with the incoming data.
@immutable
final class PostInvoicesInvoiceUpdateLinesRequestInvoiceMetadata {
  const PostInvoicesInvoiceUpdateLinesRequestInvoiceMetadata({this.mapStringString = const Omittable.absent(),
this.postInvoicesInvoiceUpdateLinesRequestInvoiceMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceUpdateLinesRequestInvoiceMetadata._({required this.rawValue, required this.mapStringString,
required this.postInvoicesInvoiceUpdateLinesRequestInvoiceMetadataVariant2,});
  factory PostInvoicesInvoiceUpdateLinesRequestInvoiceMetadata.fromJson(Object? json) => PostInvoicesInvoiceUpdateLinesRequestInvoiceMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postInvoicesInvoiceUpdateLinesRequestInvoiceMetadataVariant2: parseAnyOfVariant<PostInvoicesInvoiceUpdateLinesRequestInvoiceMetadataVariant2>(json, (value) => PostInvoicesInvoiceUpdateLinesRequestInvoiceMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostInvoicesInvoiceUpdateLinesRequestInvoiceMetadataVariant2> postInvoicesInvoiceUpdateLinesRequestInvoiceMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postInvoicesInvoiceUpdateLinesRequestInvoiceMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postInvoicesInvoiceUpdateLinesRequestInvoiceMetadataVariant2.isPresent) postInvoicesInvoiceUpdateLinesRequestInvoiceMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceUpdateLinesRequestInvoiceMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceUpdateLinesRequestInvoiceMetadata(${toJson()})';
}
