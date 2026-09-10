// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPlansPlanRequestMetadataVariant2 {const PostPlansPlanRequestMetadataVariant2._(this.value);

factory PostPlansPlanRequestMetadataVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPlansPlanRequestMetadataVariant2._(json),
};}

static const PostPlansPlanRequestMetadataVariant2 $empty = PostPlansPlanRequestMetadataVariant2._('');

static const List<PostPlansPlanRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPlansPlanRequestMetadataVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPlansPlanRequestMetadataVariant2($value)';}
}
/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
@immutable
final class PostPlansPlanRequestMetadata {
  const PostPlansPlanRequestMetadata({this.mapStringString = const Omittable.absent(),
this.postPlansPlanRequestMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPlansPlanRequestMetadata._({required this.rawValue, required this.mapStringString,
required this.postPlansPlanRequestMetadataVariant2,});
  factory PostPlansPlanRequestMetadata.fromJson(Object? json) => PostPlansPlanRequestMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postPlansPlanRequestMetadataVariant2: parseAnyOfVariant<PostPlansPlanRequestMetadataVariant2>(json, (value) => PostPlansPlanRequestMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostPlansPlanRequestMetadataVariant2> postPlansPlanRequestMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postPlansPlanRequestMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postPlansPlanRequestMetadataVariant2.isPresent) postPlansPlanRequestMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPlansPlanRequestMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPlansPlanRequestMetadata(${toJson()})';
}
