// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentLinksRequestInvoiceCreationInvoiceDataMetadataVariant2 {const PostPaymentLinksRequestInvoiceCreationInvoiceDataMetadataVariant2._(this.value);

factory PostPaymentLinksRequestInvoiceCreationInvoiceDataMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksRequestInvoiceCreationInvoiceDataMetadataVariant2._(json),
}; }

static const PostPaymentLinksRequestInvoiceCreationInvoiceDataMetadataVariant2 $empty = PostPaymentLinksRequestInvoiceCreationInvoiceDataMetadataVariant2._('');

static const List<PostPaymentLinksRequestInvoiceCreationInvoiceDataMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksRequestInvoiceCreationInvoiceDataMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksRequestInvoiceCreationInvoiceDataMetadataVariant2($value)'; } 
 }

@immutable
final class PostPaymentLinksRequestInvoiceCreationInvoiceDataMetadata {
  const PostPaymentLinksRequestInvoiceCreationInvoiceDataMetadata({this.mapStringString = const Omittable.absent(),
this.postPaymentLinksRequestInvoiceCreationInvoiceDataMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentLinksRequestInvoiceCreationInvoiceDataMetadata._({required this.rawValue, required this.mapStringString,
required this.postPaymentLinksRequestInvoiceCreationInvoiceDataMetadataVariant2,});
  factory PostPaymentLinksRequestInvoiceCreationInvoiceDataMetadata.fromJson(Object? json) => PostPaymentLinksRequestInvoiceCreationInvoiceDataMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postPaymentLinksRequestInvoiceCreationInvoiceDataMetadataVariant2: parseAnyOfVariant<PostPaymentLinksRequestInvoiceCreationInvoiceDataMetadataVariant2>(json, (value) => PostPaymentLinksRequestInvoiceCreationInvoiceDataMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostPaymentLinksRequestInvoiceCreationInvoiceDataMetadataVariant2> postPaymentLinksRequestInvoiceCreationInvoiceDataMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postPaymentLinksRequestInvoiceCreationInvoiceDataMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postPaymentLinksRequestInvoiceCreationInvoiceDataMetadataVariant2.isPresent) postPaymentLinksRequestInvoiceCreationInvoiceDataMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentLinksRequestInvoiceCreationInvoiceDataMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentLinksRequestInvoiceCreationInvoiceDataMetadata(${toJson()})';
}
