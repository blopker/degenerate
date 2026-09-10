// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_indicator_create_bulk_request_indicators_tags_variant2.dart';
@immutable
final class PostIndicatorCreateBulkRequestIndicatorsTags {
  const PostIndicatorCreateBulkRequestIndicatorsTags({this.string = const Omittable.absent(),
this.postIndicatorCreateBulkRequestIndicatorsTagsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIndicatorCreateBulkRequestIndicatorsTags._({required this.rawValue, required this.string,
required this.postIndicatorCreateBulkRequestIndicatorsTagsVariant2,});
  factory PostIndicatorCreateBulkRequestIndicatorsTags.fromJson(Object? json) => PostIndicatorCreateBulkRequestIndicatorsTags._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postIndicatorCreateBulkRequestIndicatorsTagsVariant2: parseAnyOfVariant<PostIndicatorCreateBulkRequestIndicatorsTagsVariant2>(json, (value) => PostIndicatorCreateBulkRequestIndicatorsTagsVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostIndicatorCreateBulkRequestIndicatorsTagsVariant2> postIndicatorCreateBulkRequestIndicatorsTagsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postIndicatorCreateBulkRequestIndicatorsTagsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postIndicatorCreateBulkRequestIndicatorsTagsVariant2.isPresent) postIndicatorCreateBulkRequestIndicatorsTagsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIndicatorCreateBulkRequestIndicatorsTags && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIndicatorCreateBulkRequestIndicatorsTags(${toJson()})';
}
