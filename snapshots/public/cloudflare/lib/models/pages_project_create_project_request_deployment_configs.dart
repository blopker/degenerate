// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pages_deployment_config_values_request.dart';/// Configs for deployments in a project.
@immutable final class PagesProjectCreateProjectRequestDeploymentConfigs {const PagesProjectCreateProjectRequestDeploymentConfigs({this.preview, this.production, });

factory PagesProjectCreateProjectRequestDeploymentConfigs.fromJson(Map<String, dynamic> json) { return PagesProjectCreateProjectRequestDeploymentConfigs(
  preview: json['preview'] != null ? PagesDeploymentConfigValuesRequest.fromJson(json['preview'] as Map<String, dynamic>) : null,
  production: json['production'] != null ? PagesDeploymentConfigValuesRequest.fromJson(json['production'] as Map<String, dynamic>) : null,
); }

/// Configs for preview deploys.
final PagesDeploymentConfigValuesRequest? preview;

/// Configs for production deploys.
final PagesDeploymentConfigValuesRequest? production;

Map<String, dynamic> toJson() { return {
  if (preview != null) 'preview': preview?.toJson(),
  if (production != null) 'production': production?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preview', 'production'}.contains(key)); } 
PagesProjectCreateProjectRequestDeploymentConfigs copyWith({PagesDeploymentConfigValuesRequest Function()? preview, PagesDeploymentConfigValuesRequest Function()? production, }) { return PagesProjectCreateProjectRequestDeploymentConfigs(
  preview: preview != null ? preview() : this.preview,
  production: production != null ? production() : this.production,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesProjectCreateProjectRequestDeploymentConfigs &&
          preview == other.preview &&
          production == other.production; } 
@override int get hashCode { return Object.hash(preview, production); } 
@override String toString() { return 'PagesProjectCreateProjectRequestDeploymentConfigs(preview: $preview, production: $production)'; } 
 }
