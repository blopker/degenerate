// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookRubygemsMetadataVersionInfo {const WebhookRubygemsMetadataVersionInfo({this.version});

factory WebhookRubygemsMetadataVersionInfo.fromJson(Map<String, dynamic> json) { return WebhookRubygemsMetadataVersionInfo(
  version: json['version'] as String?,
); }

final String? version;

Map<String, dynamic> toJson() { return {
  'version': ?version,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'version'}.contains(key)); } 
WebhookRubygemsMetadataVersionInfo copyWith({String Function()? version}) { return WebhookRubygemsMetadataVersionInfo(
  version: version != null ? version() : this.version,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRubygemsMetadataVersionInfo &&
          version == other.version; } 
@override int get hashCode { return version.hashCode; } 
@override String toString() { return 'WebhookRubygemsMetadataVersionInfo(version: $version)'; } 
 }
