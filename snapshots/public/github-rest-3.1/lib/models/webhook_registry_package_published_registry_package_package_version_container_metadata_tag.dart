// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookRegistryPackagePublishedRegistryPackagePackageVersionContainerMetadataTag {const WebhookRegistryPackagePublishedRegistryPackagePackageVersionContainerMetadataTag({this.digest, this.name, });

factory WebhookRegistryPackagePublishedRegistryPackagePackageVersionContainerMetadataTag.fromJson(Map<String, dynamic> json) { return WebhookRegistryPackagePublishedRegistryPackagePackageVersionContainerMetadataTag(
  digest: json['digest'] as String?,
  name: json['name'] as String?,
); }

final String? digest;

final String? name;

Map<String, dynamic> toJson() { return {
  'digest': ?digest,
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'digest', 'name'}.contains(key)); } 
WebhookRegistryPackagePublishedRegistryPackagePackageVersionContainerMetadataTag copyWith({String Function()? digest, String Function()? name, }) { return WebhookRegistryPackagePublishedRegistryPackagePackageVersionContainerMetadataTag(
  digest: digest != null ? digest() : this.digest,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRegistryPackagePublishedRegistryPackagePackageVersionContainerMetadataTag &&
          digest == other.digest &&
          name == other.name; } 
@override int get hashCode { return Object.hash(digest, name); } 
@override String toString() { return 'WebhookRegistryPackagePublishedRegistryPackagePackageVersionContainerMetadataTag(digest: $digest, name: $name)'; } 
 }
