// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_version_request_assets_config.dart';/// Configuration for assets within a Worker.
/// 
/// [`_headers`](https://developers.cloudflare.com/workers/static-assets/headers/#custom-headers) and
/// [`_redirects`](https://developers.cloudflare.com/workers/static-assets/redirects/) files should be
/// included as modules named `_headers` and `_redirects` with content type `text/plain`.
/// 
@immutable final class WorkersVersionRequestAssets {const WorkersVersionRequestAssets({this.config, this.jwt, });

factory WorkersVersionRequestAssets.fromJson(Map<String, dynamic> json) { return WorkersVersionRequestAssets(
  config: json['config'] != null ? WorkersVersionRequestAssetsConfig.fromJson(json['config'] as Map<String, dynamic>) : null,
  jwt: json['jwt'] as String?,
); }

/// Configuration for assets within a Worker.
final WorkersVersionRequestAssetsConfig? config;

/// Token provided upon successful upload of all files from a registered manifest.
final String? jwt;

Map<String, dynamic> toJson() { return {
  if (config != null) 'config': config?.toJson(),
  'jwt': ?jwt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'config', 'jwt'}.contains(key)); } 
WorkersVersionRequestAssets copyWith({WorkersVersionRequestAssetsConfig? Function()? config, String? Function()? jwt, }) { return WorkersVersionRequestAssets(
  config: config != null ? config() : this.config,
  jwt: jwt != null ? jwt() : this.jwt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersVersionRequestAssets &&
          config == other.config &&
          jwt == other.jwt; } 
@override int get hashCode { return Object.hash(config, jwt); } 
@override String toString() { return 'WorkersVersionRequestAssets(config: $config, jwt: $jwt)'; } 
 }
