// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_version_response_assets_config.dart';/// Configuration for assets within a Worker.
/// 
/// [`_headers`](https://developers.cloudflare.com/workers/static-assets/headers/#custom-headers) and
/// [`_redirects`](https://developers.cloudflare.com/workers/static-assets/redirects/) files should be
/// included as modules named `_headers` and `_redirects` with content type `text/plain`.
/// 
@immutable final class WorkersVersionResponseAssets {const WorkersVersionResponseAssets({this.config, this.jwt, });

factory WorkersVersionResponseAssets.fromJson(Map<String, dynamic> json) { return WorkersVersionResponseAssets(
  config: json['config'] != null ? WorkersVersionResponseAssetsConfig.fromJson(json['config'] as Map<String, dynamic>) : null,
  jwt: json['jwt'] as String?,
); }

/// Configuration for assets within a Worker.
final WorkersVersionResponseAssetsConfig? config;

/// Token provided upon successful upload of all files from a registered manifest.
final String? jwt;

Map<String, dynamic> toJson() { return {
  if (config != null) 'config': config?.toJson(),
  'jwt': ?jwt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'config', 'jwt'}.contains(key)); } 
WorkersVersionResponseAssets copyWith({WorkersVersionResponseAssetsConfig? Function()? config, String? Function()? jwt, }) { return WorkersVersionResponseAssets(
  config: config != null ? config() : this.config,
  jwt: jwt != null ? jwt() : this.jwt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersVersionResponseAssets &&
          config == other.config &&
          jwt == other.jwt; } 
@override int get hashCode { return Object.hash(config, jwt); } 
@override String toString() { return 'WorkersVersionResponseAssets(config: $config, jwt: $jwt)'; } 
 }
