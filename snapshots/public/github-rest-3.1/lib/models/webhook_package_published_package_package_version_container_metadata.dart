// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_package_published_package_package_version_container_metadata_tag.dart';@immutable final class WebhookPackagePublishedPackagePackageVersionContainerMetadata {const WebhookPackagePublishedPackagePackageVersionContainerMetadata({this.labels = const Omittable.absent(), this.manifest = const Omittable.absent(), this.tag, });

factory WebhookPackagePublishedPackagePackageVersionContainerMetadata.fromJson(Map<String, dynamic> json) { return WebhookPackagePublishedPackagePackageVersionContainerMetadata(
  labels: json.containsKey('labels') ? Omittable(json['labels'] as Map<String, dynamic>?) : const Omittable.absent(),
  manifest: json.containsKey('manifest') ? Omittable(json['manifest'] as Map<String, dynamic>?) : const Omittable.absent(),
  tag: json['tag'] != null ? WebhookPackagePublishedPackagePackageVersionContainerMetadataTag.fromJson(json['tag'] as Map<String, dynamic>) : null,
); }

final Omittable<Map<String,dynamic>?> labels;

final Omittable<Map<String,dynamic>?> manifest;

final WebhookPackagePublishedPackagePackageVersionContainerMetadataTag? tag;

Map<String, dynamic> toJson() { return {
  if (labels.isPresent) 'labels': labels.value,
  if (manifest.isPresent) 'manifest': manifest.value,
  if (tag != null) 'tag': tag?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'labels', 'manifest', 'tag'}.contains(key)); } 
WebhookPackagePublishedPackagePackageVersionContainerMetadata copyWith({Omittable<Map<String,dynamic>?>? labels, Omittable<Map<String,dynamic>?>? manifest, WebhookPackagePublishedPackagePackageVersionContainerMetadataTag? Function()? tag, }) { return WebhookPackagePublishedPackagePackageVersionContainerMetadata(
  labels: labels ?? this.labels,
  manifest: manifest ?? this.manifest,
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
