// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookRegistryPackagePublishedRegistryPackagePackageVersionNugetMetadataValueVariant4 {const WebhookRegistryPackagePublishedRegistryPackagePackageVersionNugetMetadataValueVariant4({this.url, this.branch, this.commit, this.type, });

factory WebhookRegistryPackagePublishedRegistryPackagePackageVersionNugetMetadataValueVariant4.fromJson(Map<String, dynamic> json) { return WebhookRegistryPackagePublishedRegistryPackagePackageVersionNugetMetadataValueVariant4(
  url: json['url'] as String?,
  branch: json['branch'] as String?,
  commit: json['commit'] as String?,
  type: json['type'] as String?,
); }

final String? url;

final String? branch;

final String? commit;

final String? type;

Map<String, dynamic> toJson() { return {
  'url': ?url,
  'branch': ?branch,
  'commit': ?commit,
  'type': ?type,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
WebhookRegistryPackagePublishedRegistryPackagePackageVersionNugetMetadataValueVariant4 copyWith({String Function()? url, String Function()? branch, String Function()? commit, String Function()? type, }) { return WebhookRegistryPackagePublishedRegistryPackagePackageVersionNugetMetadataValueVariant4(
  url: url != null ? url() : this.url,
  branch: branch != null ? branch() : this.branch,
  commit: commit != null ? commit() : this.commit,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRegistryPackagePublishedRegistryPackagePackageVersionNugetMetadataValueVariant4 &&
          url == other.url &&
          branch == other.branch &&
          commit == other.commit &&
          type == other.type; } 
@override int get hashCode { return Object.hash(url, branch, commit, type); } 
@override String toString() { return 'WebhookRegistryPackagePublishedRegistryPackagePackageVersionNugetMetadataValueVariant4(url: $url, branch: $branch, commit: $commit, type: $type)'; } 
 }
