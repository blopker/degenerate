// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostRadarValueListsValueListRequest {const PostRadarValueListsValueListRequest({this.alias, this.expand, this.metadata, this.name, });

factory PostRadarValueListsValueListRequest.fromJson(Map<String, dynamic> json) { return PostRadarValueListsValueListRequest(
  alias: json['alias'] as String?,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  name: json['name'] as String?,
); }

/// The name of the value list for use in rules.
final String? alias;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
final Map<String,String>? metadata;

/// The human-readable name of the value list.
final String? name;

Map<String, dynamic> toJson() { return {
  'alias': ?alias,
  'expand': ?expand,
  'metadata': ?metadata,
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'alias', 'expand', 'metadata', 'name'}.contains(key)); } 
PostRadarValueListsValueListRequest copyWith({String Function()? alias, List<String> Function()? expand, Map<String, String> Function()? metadata, String Function()? name, }) { return PostRadarValueListsValueListRequest(
  alias: alias != null ? alias() : this.alias,
  expand: expand != null ? expand() : this.expand,
  metadata: metadata != null ? metadata() : this.metadata,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostRadarValueListsValueListRequest &&
          alias == other.alias &&
          listEquals(expand, other.expand) &&
          metadata == other.metadata &&
          name == other.name; } 
@override int get hashCode { return Object.hash(alias, Object.hashAll(expand ?? const []), metadata, name); } 
@override String toString() { return 'PostRadarValueListsValueListRequest(alias: $alias, expand: $expand, metadata: $metadata, name: $name)'; } 
 }
