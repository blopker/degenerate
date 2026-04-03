// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_package_published_package_package_version_container_metadata_tag.dart';@immutable final class WebhookPackagePublishedPackagePackageVersionContainerMetadata {const WebhookPackagePublishedPackagePackageVersionContainerMetadata({this.labels, this.manifest, this.tag, });

factory WebhookPackagePublishedPackagePackageVersionContainerMetadata.fromJson(Map<String, dynamic> json) { return WebhookPackagePublishedPackagePackageVersionContainerMetadata(
  labels: json['labels'] as Map<String, dynamic>?,
  manifest: json['manifest'] as Map<String, dynamic>?,
  tag: json['tag'] != null ? WebhookPackagePublishedPackagePackageVersionContainerMetadataTag.fromJson(json['tag'] as Map<String, dynamic>) : null,
); }

final Map<String,dynamic>? labels;

final Map<String,dynamic>? manifest;

final WebhookPackagePublishedPackagePackageVersionContainerMetadataTag? tag;

Map<String, dynamic> toJson() { return {
  'labels': ?labels,
  'manifest': ?manifest,
  if (tag != null) 'tag': tag?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'labels', 'manifest', 'tag'}.contains(key)); } 
WebhookPackagePublishedPackagePackageVersionContainerMetadata copyWith({Map<String, dynamic>? Function()? labels, Map<String, dynamic>? Function()? manifest, WebhookPackagePublishedPackagePackageVersionContainerMetadataTag Function()? tag, }) { return WebhookPackagePublishedPackagePackageVersionContainerMetadata(
  labels: labels != null ? labels() : this.labels,
  manifest: manifest != null ? manifest() : this.manifest,
  tag: tag != null ? tag() : this.tag,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPackagePublishedPackagePackageVersionContainerMetadata &&
          labels == other.labels &&
          manifest == other.manifest &&
          tag == other.tag; } 
@override int get hashCode { return Object.hash(labels, manifest, tag); } 
@override String toString() { return 'WebhookPackagePublishedPackagePackageVersionContainerMetadata(labels: $labels, manifest: $manifest, tag: $tag)'; } 
 }
