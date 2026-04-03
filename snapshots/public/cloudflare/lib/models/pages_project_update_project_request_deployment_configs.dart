// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pages_deployment_config_values_request.dart';/// Configs for deployments in a project.
@immutable final class PagesProjectUpdateProjectRequestDeploymentConfigs {const PagesProjectUpdateProjectRequestDeploymentConfigs({this.preview, this.production, });

factory PagesProjectUpdateProjectRequestDeploymentConfigs.fromJson(Map<String, dynamic> json) { return PagesProjectUpdateProjectRequestDeploymentConfigs(
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
PagesProjectUpdateProjectRequestDeploymentConfigs copyWith({PagesDeploymentConfigValuesRequest Function()? preview, PagesDeploymentConfigValuesRequest Function()? production, }) { return PagesProjectUpdateProjectRequestDeploymentConfigs(
  preview: preview != null ? preview() : this.preview,
  production: production != null ? production() : this.production,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesProjectUpdateProjectRequestDeploymentConfigs &&
          preview == other.preview &&
          production == other.production; } 
@override int get hashCode { return Object.hash(preview, production); } 
@override String toString() { return 'PagesProjectUpdateProjectRequestDeploymentConfigs(preview: $preview, production: $production)'; } 
 }
