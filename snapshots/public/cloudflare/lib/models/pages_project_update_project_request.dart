// GENERATED CODE - DO NOT MODIFY BY HAND

import 'pages_project_update_project_request_build_config.dart';import 'pages_project_update_project_request_deployment_configs.dart';import 'pages_project_update_project_request_source.dart';final class PagesProjectUpdateProjectRequest {const PagesProjectUpdateProjectRequest({this.buildConfig, this.deploymentConfigs, this.name, this.productionBranch, this.source, });

factory PagesProjectUpdateProjectRequest.fromJson(Map<String, dynamic> json) { return PagesProjectUpdateProjectRequest(
  buildConfig: json['build_config'] != null ? PagesProjectUpdateProjectRequestBuildConfig.fromJson(json['build_config'] as Map<String, dynamic>) : null,
  deploymentConfigs: json['deployment_configs'] != null ? PagesProjectUpdateProjectRequestDeploymentConfigs.fromJson(json['deployment_configs'] as Map<String, dynamic>) : null,
  name: json['name'] as String?,
  productionBranch: json['production_branch'] as String?,
  source: json['source'] != null ? PagesProjectUpdateProjectRequestSource.fromJson(json['source'] as Map<String, dynamic>) : null,
); }

/// Configs for the project build process.
final PagesProjectUpdateProjectRequestBuildConfig? buildConfig;

/// Configs for deployments in a project.
final PagesProjectUpdateProjectRequestDeploymentConfigs? deploymentConfigs;

/// Name of the project.
final String? name;

/// Production branch of the project. Used to identify production deployments.
final String? productionBranch;

/// Configs for the project source control.
final PagesProjectUpdateProjectRequestSource? source;

Map<String, dynamic> toJson() { return {
  if (buildConfig != null) 'build_config': buildConfig?.toJson(),
  if (deploymentConfigs != null) 'deployment_configs': deploymentConfigs?.toJson(),
  'name': ?name,
  'production_branch': ?productionBranch,
  if (source != null) 'source': source?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PagesProjectUpdateProjectRequest copyWith({PagesProjectUpdateProjectRequestBuildConfig Function()? buildConfig, PagesProjectUpdateProjectRequestDeploymentConfigs Function()? deploymentConfigs, String Function()? name, String Function()? productionBranch, PagesProjectUpdateProjectRequestSource Function()? source, }) { return PagesProjectUpdateProjectRequest(
  buildConfig: buildConfig != null ? buildConfig() : this.buildConfig,
  deploymentConfigs: deploymentConfigs != null ? deploymentConfigs() : this.deploymentConfigs,
  name: name != null ? name() : this.name,
  productionBranch: productionBranch != null ? productionBranch() : this.productionBranch,
  source: source != null ? source() : this.source,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesProjectUpdateProjectRequest &&
          buildConfig == other.buildConfig &&
          deploymentConfigs == other.deploymentConfigs &&
          name == other.name &&
          productionBranch == other.productionBranch &&
          source == other.source; } 
@override int get hashCode { return Object.hash(buildConfig, deploymentConfigs, name, productionBranch, source); } 
@override String toString() { return 'PagesProjectUpdateProjectRequest(buildConfig: $buildConfig, deploymentConfigs: $deploymentConfigs, name: $name, productionBranch: $productionBranch, source: $source)'; } 
 }
