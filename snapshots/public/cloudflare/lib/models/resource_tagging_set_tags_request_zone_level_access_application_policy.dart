// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Request body schema for setting tags on access_application_policy resources.
@immutable final class ResourceTaggingSetTagsRequestZoneLevelAccessApplicationPolicy {const ResourceTaggingSetTagsRequestZoneLevelAccessApplicationPolicy({this.tags});

factory ResourceTaggingSetTagsRequestZoneLevelAccessApplicationPolicy.fromJson(Map<String, dynamic> json) { return ResourceTaggingSetTagsRequestZoneLevelAccessApplicationPolicy(
  tags: (json['tags'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
); }

final Map<String,String>? tags;

Map<String, dynamic> toJson() { return {
  'tags': ?tags,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'tags'}.contains(key)); } 
ResourceTaggingSetTagsRequestZoneLevelAccessApplicationPolicy copyWith({Map<String, String> Function()? tags}) { return ResourceTaggingSetTagsRequestZoneLevelAccessApplicationPolicy(
  tags: tags != null ? tags() : this.tags,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResourceTaggingSetTagsRequestZoneLevelAccessApplicationPolicy &&
          tags == other.tags; } 
@override int get hashCode { return tags.hashCode; } 
@override String toString() { return 'ResourceTaggingSetTagsRequestZoneLevelAccessApplicationPolicy(tags: $tags)'; } 
 }
