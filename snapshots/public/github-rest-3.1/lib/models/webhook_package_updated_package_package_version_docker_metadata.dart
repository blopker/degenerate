// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class WebhookPackageUpdatedPackagePackageVersionDockerMetadata {const WebhookPackageUpdatedPackagePackageVersionDockerMetadata({this.tags});

factory WebhookPackageUpdatedPackagePackageVersionDockerMetadata.fromJson(Map<String, dynamic> json) { return WebhookPackageUpdatedPackagePackageVersionDockerMetadata(
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final List<String>? tags;

Map<String, dynamic> toJson() { return {
  'tags': ?tags,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'tags'}.contains(key)); } 
WebhookPackageUpdatedPackagePackageVersionDockerMetadata copyWith({List<String> Function()? tags}) { return WebhookPackageUpdatedPackagePackageVersionDockerMetadata(
  tags: tags != null ? tags() : this.tags,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPackageUpdatedPackagePackageVersionDockerMetadata &&
          listEquals(tags, other.tags); } 
@override int get hashCode { return Object.hashAll(tags ?? const []).hashCode; } 
@override String toString() { return 'WebhookPackageUpdatedPackagePackageVersionDockerMetadata(tags: $tags)'; } 
 }
