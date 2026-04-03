// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostEntitlementsFeaturesRequest {const PostEntitlementsFeaturesRequest({required this.lookupKey, required this.name, this.expand, this.metadata, });

factory PostEntitlementsFeaturesRequest.fromJson(Map<String, dynamic> json) { return PostEntitlementsFeaturesRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  lookupKey: json['lookup_key'] as String,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  name: json['name'] as String,
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// A unique key you provide as your own system identifier. This may be up to 80 characters.
final String lookupKey;

/// Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Map<String,String>? metadata;

/// The feature's name, for your own purpose, not meant to be displayable to the customer.
final String name;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
  'lookup_key': lookupKey,
  'metadata': ?metadata,
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('lookup_key') && json['lookup_key'] is String &&
      json.containsKey('name') && json['name'] is String; } 
PostEntitlementsFeaturesRequest copyWith({List<String> Function()? expand, String? lookupKey, Map<String, String> Function()? metadata, String? name, }) { return PostEntitlementsFeaturesRequest(
  expand: expand != null ? expand() : this.expand,
  lookupKey: lookupKey ?? this.lookupKey,
  metadata: metadata != null ? metadata() : this.metadata,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEntitlementsFeaturesRequest &&
          listEquals(expand, other.expand) &&
          lookupKey == other.lookupKey &&
          metadata == other.metadata &&
          name == other.name; } 
@override int get hashCode { return Object.hash(Object.hashAll(expand ?? const []), lookupKey, metadata, name); } 
@override String toString() { return 'PostEntitlementsFeaturesRequest(expand: $expand, lookupKey: $lookupKey, metadata: $metadata, name: $name)'; } 
 }
