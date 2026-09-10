// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostEntitlementsFeaturesIdRequestMetadataVariant2 {const PostEntitlementsFeaturesIdRequestMetadataVariant2._(this.value);

factory PostEntitlementsFeaturesIdRequestMetadataVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostEntitlementsFeaturesIdRequestMetadataVariant2._(json),
};}

static const PostEntitlementsFeaturesIdRequestMetadataVariant2 $empty = PostEntitlementsFeaturesIdRequestMetadataVariant2._('');

static const List<PostEntitlementsFeaturesIdRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostEntitlementsFeaturesIdRequestMetadataVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostEntitlementsFeaturesIdRequestMetadataVariant2($value)';}
}
/// Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
@immutable
final class PostEntitlementsFeaturesIdRequestMetadata {
  const PostEntitlementsFeaturesIdRequestMetadata({this.mapStringString = const Omittable.absent(),
this.postEntitlementsFeaturesIdRequestMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostEntitlementsFeaturesIdRequestMetadata._({required this.rawValue, required this.mapStringString,
required this.postEntitlementsFeaturesIdRequestMetadataVariant2,});
  factory PostEntitlementsFeaturesIdRequestMetadata.fromJson(Object? json) => PostEntitlementsFeaturesIdRequestMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postEntitlementsFeaturesIdRequestMetadataVariant2: parseAnyOfVariant<PostEntitlementsFeaturesIdRequestMetadataVariant2>(json, (value) => PostEntitlementsFeaturesIdRequestMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostEntitlementsFeaturesIdRequestMetadataVariant2> postEntitlementsFeaturesIdRequestMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postEntitlementsFeaturesIdRequestMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postEntitlementsFeaturesIdRequestMetadataVariant2.isPresent) postEntitlementsFeaturesIdRequestMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostEntitlementsFeaturesIdRequestMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostEntitlementsFeaturesIdRequestMetadata(${toJson()})';
}
