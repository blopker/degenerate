// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2 {const PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2._(json),
}; }

static const PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2 $empty = PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2($value)'; } 
 }

@immutable
final class PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadata {
  const PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadata({this.mapStringString = const Omittable.absent(),
this.postPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadata._({required this.rawValue, required this.mapStringString,
required this.postPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2,});
  factory PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadata.fromJson(Object? json) => PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2: parseAnyOfVariant<PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2>(json, (value) => PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2> postPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2.isPresent) postPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadata(${toJson()})';
}
