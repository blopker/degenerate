// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesRequestMetadataVariant2 {const PostSubscriptionSchedulesRequestMetadataVariant2._(this.value);

factory PostSubscriptionSchedulesRequestMetadataVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesRequestMetadataVariant2._(json),
};}

static const PostSubscriptionSchedulesRequestMetadataVariant2 $empty = PostSubscriptionSchedulesRequestMetadataVariant2._('');

static const List<PostSubscriptionSchedulesRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionSchedulesRequestMetadataVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionSchedulesRequestMetadataVariant2($value)';}
}
/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
@immutable
final class PostSubscriptionSchedulesRequestMetadata {
  const PostSubscriptionSchedulesRequestMetadata({this.mapStringString = const Omittable.absent(),
this.postSubscriptionSchedulesRequestMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesRequestMetadata._({required this.rawValue, required this.mapStringString,
required this.postSubscriptionSchedulesRequestMetadataVariant2,});
  factory PostSubscriptionSchedulesRequestMetadata.fromJson(Object? json) => PostSubscriptionSchedulesRequestMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postSubscriptionSchedulesRequestMetadataVariant2: parseAnyOfVariant<PostSubscriptionSchedulesRequestMetadataVariant2>(json, (value) => PostSubscriptionSchedulesRequestMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostSubscriptionSchedulesRequestMetadataVariant2> postSubscriptionSchedulesRequestMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postSubscriptionSchedulesRequestMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postSubscriptionSchedulesRequestMetadataVariant2.isPresent) postSubscriptionSchedulesRequestMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesRequestMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesRequestMetadata(${toJson()})';
}
