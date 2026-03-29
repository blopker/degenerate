// GENERATED CODE - DO NOT MODIFY BY HAND

import 'workers_version_assets_config.dart';/// Configuration for assets within a Worker.
/// 
/// [`_headers`](https://developers.cloudflare.com/workers/static-assets/headers/#custom-headers) and
/// [`_redirects`](https://developers.cloudflare.com/workers/static-assets/redirects/) files should be
/// included as modules named `_headers` and `_redirects` with content type `text/plain`.
/// 
final class WorkersVersionAssets {const WorkersVersionAssets({this.config, this.jwt, });

factory WorkersVersionAssets.fromJson(Map<String, dynamic> json) { return WorkersVersionAssets(
  config: json['config'] != null ? WorkersVersionAssetsConfig.fromJson(json['config'] as Map<String, dynamic>) : null,
  jwt: json['jwt'] as String?,
); }

/// Configuration for assets within a Worker.
final WorkersVersionAssetsConfig? config;

/// Token provided upon successful upload of all files from a registered manifest.
final String? jwt;

Map<String, dynamic> toJson() { return {
  if (config != null) 'config': config?.toJson(),
  'jwt': ?jwt,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
WorkersVersionAssets copyWith({WorkersVersionAssetsConfig Function()? config, String Function()? jwt, }) { return WorkersVersionAssets(
  config: config != null ? config() : this.config,
  jwt: jwt != null ? jwt() : this.jwt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersVersionAssets &&
          config == other.config &&
          jwt == other.jwt; } 
@override int get hashCode { return Object.hash(config, jwt); } 
@override String toString() { return 'WorkersVersionAssets(config: $config, jwt: $jwt)'; } 
 }
