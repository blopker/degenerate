// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_indicator_create_request_tags_variant2.dart';
@immutable
final class PostIndicatorCreateRequestTags {
  const PostIndicatorCreateRequestTags({this.string = const Omittable.absent(),
this.postIndicatorCreateRequestTagsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIndicatorCreateRequestTags._({required this.rawValue, required this.string,
required this.postIndicatorCreateRequestTagsVariant2,});
  factory PostIndicatorCreateRequestTags.fromJson(Object? json) => PostIndicatorCreateRequestTags._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postIndicatorCreateRequestTagsVariant2: parseAnyOfVariant<PostIndicatorCreateRequestTagsVariant2>(json, (value) => PostIndicatorCreateRequestTagsVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostIndicatorCreateRequestTagsVariant2> postIndicatorCreateRequestTagsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postIndicatorCreateRequestTagsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postIndicatorCreateRequestTagsVariant2.isPresent) postIndicatorCreateRequestTagsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIndicatorCreateRequestTags && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIndicatorCreateRequestTags(${toJson()})';
}
