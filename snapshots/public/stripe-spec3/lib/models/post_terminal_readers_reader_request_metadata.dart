// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTerminalReadersReaderRequestMetadataVariant2 {const PostTerminalReadersReaderRequestMetadataVariant2._(this.value);

factory PostTerminalReadersReaderRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTerminalReadersReaderRequestMetadataVariant2._(json),
}; }

static const PostTerminalReadersReaderRequestMetadataVariant2 $empty = PostTerminalReadersReaderRequestMetadataVariant2._('');

static const List<PostTerminalReadersReaderRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTerminalReadersReaderRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTerminalReadersReaderRequestMetadataVariant2($value)'; } 
 }
/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
@immutable
final class PostTerminalReadersReaderRequestMetadata {
  const PostTerminalReadersReaderRequestMetadata({this.mapStringString = const Omittable.absent(),
this.postTerminalReadersReaderRequestMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTerminalReadersReaderRequestMetadata._({required this.rawValue, required this.mapStringString,
required this.postTerminalReadersReaderRequestMetadataVariant2,});
  factory PostTerminalReadersReaderRequestMetadata.fromJson(Object? json) => PostTerminalReadersReaderRequestMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postTerminalReadersReaderRequestMetadataVariant2: parseAnyOfVariant<PostTerminalReadersReaderRequestMetadataVariant2>(json, (value) => PostTerminalReadersReaderRequestMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostTerminalReadersReaderRequestMetadataVariant2> postTerminalReadersReaderRequestMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postTerminalReadersReaderRequestMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postTerminalReadersReaderRequestMetadataVariant2.isPresent) postTerminalReadersReaderRequestMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTerminalReadersReaderRequestMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTerminalReadersReaderRequestMetadata(${toJson()})';
}
