// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPackagePublishedPackagePackageVersionDockerMetadata {const WebhookPackagePublishedPackagePackageVersionDockerMetadata({this.tags});

factory WebhookPackagePublishedPackagePackageVersionDockerMetadata.fromJson(Map<String, dynamic> json) { return WebhookPackagePublishedPackagePackageVersionDockerMetadata(
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final List<String>? tags;

Map<String, dynamic> toJson() { return {
  'tags': ?tags,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'tags'}.contains(key)); } 
WebhookPackagePublishedPackagePackageVersionDockerMetadata copyWith({List<String> Function()? tags}) { return WebhookPackagePublishedPackagePackageVersionDockerMetadata(
  tags: tags != null ? tags() : this.tags,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPackagePublishedPackagePackageVersionDockerMetadata &&
          listEquals(tags, other.tags); } 
@override int get hashCode { return Object.hashAll(tags ?? const []).hashCode; } 
@override String toString() { return 'WebhookPackagePublishedPackagePackageVersionDockerMetadata(tags: $tags)'; } 
 }
