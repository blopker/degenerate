// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2 {const PostInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2._(this.value);

factory PostInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2._(json),
};}

static const PostInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2 $empty = PostInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2._('');

static const List<PostInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2($value)';}
}

@immutable
final class PostInvoicesInvoiceUpdateLinesRequestLinesMetadata {
  const PostInvoicesInvoiceUpdateLinesRequestLinesMetadata({this.mapStringString = const Omittable.absent(),
this.postInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceUpdateLinesRequestLinesMetadata._({required this.rawValue, required this.mapStringString,
required this.postInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2,});
  factory PostInvoicesInvoiceUpdateLinesRequestLinesMetadata.fromJson(Object? json) => PostInvoicesInvoiceUpdateLinesRequestLinesMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2: parseAnyOfVariant<PostInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2>(json, (value) => PostInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2> postInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2.isPresent) postInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceUpdateLinesRequestLinesMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceUpdateLinesRequestLinesMetadata(${toJson()})';
}
