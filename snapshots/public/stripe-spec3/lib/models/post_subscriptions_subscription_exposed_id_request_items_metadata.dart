// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2 {const PostSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2._(json),
}; }

static const PostSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2 $empty = PostSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2._('');

static const List<PostSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2($value)'; } 
 }

@immutable
final class PostSubscriptionsSubscriptionExposedIdRequestItemsMetadata {
  const PostSubscriptionsSubscriptionExposedIdRequestItemsMetadata({this.mapStringString = const Omittable.absent(),
this.postSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsSubscriptionExposedIdRequestItemsMetadata._({required this.rawValue, required this.mapStringString,
required this.postSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2,});
  factory PostSubscriptionsSubscriptionExposedIdRequestItemsMetadata.fromJson(Object? json) => PostSubscriptionsSubscriptionExposedIdRequestItemsMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2: parseAnyOfVariant<PostSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2>(json, (value) => PostSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2> postSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2.isPresent) postSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsSubscriptionExposedIdRequestItemsMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsSubscriptionExposedIdRequestItemsMetadata(${toJson()})';
}
