// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'integration.dart';import 'simple_user.dart';/// The state of the status.
@immutable final class DeploymentStatusState {const DeploymentStatusState._(this.value);

factory DeploymentStatusState.fromJson(String json) { return switch (json) {
  'error' => error,
  'failure' => failure,
  'inactive' => inactive,
  'pending' => pending,
  'success' => success,
  'queued' => queued,
  'in_progress' => inProgress,
  _ => DeploymentStatusState._(json),
}; }

static const DeploymentStatusState error = DeploymentStatusState._('error');

static const DeploymentStatusState failure = DeploymentStatusState._('failure');

static const DeploymentStatusState inactive = DeploymentStatusState._('inactive');

static const DeploymentStatusState pending = DeploymentStatusState._('pending');

static const DeploymentStatusState success = DeploymentStatusState._('success');

static const DeploymentStatusState queued = DeploymentStatusState._('queued');

static const DeploymentStatusState inProgress = DeploymentStatusState._('in_progress');

static const List<DeploymentStatusState> values = [error, failure, inactive, pending, success, queued, inProgress];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeploymentStatusState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeploymentStatusState($value)'; } 
 }
/// The status of a deployment.
@immutable final class DeploymentStatus {const DeploymentStatus({required this.url, required this.id, required this.nodeId, required this.state, required this.creator, required this.targetUrl, required this.createdAt, required this.updatedAt, required this.deploymentUrl, required this.repositoryUrl, this.description = '', this.environment = '', this.environmentUrl, this.logUrl, this.performedViaGithubApp, });

factory DeploymentStatus.fromJson(Map<String, dynamic> json) { return DeploymentStatus(
  url: Uri.parse(json['url'] as String),
  id: (json['id'] as num).toInt(),
  nodeId: json['node_id'] as String,
  state: DeploymentStatusState.fromJson(json['state'] as String),
  creator: json['creator'] != null ? SimpleUser.fromJson(json['creator'] as Map<String, dynamic>) : null,
  description: json['description'] as String,
  environment: json.containsKey('environment') ? json['environment'] as String : '',
  targetUrl: Uri.parse(json['target_url'] as String),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  deploymentUrl: Uri.parse(json['deployment_url'] as String),
  repositoryUrl: Uri.parse(json['repository_url'] as String),
  environmentUrl: json['environment_url'] != null ? Uri.parse(json['environment_url'] as String) : null,
  logUrl: json['log_url'] != null ? Uri.parse(json['log_url'] as String) : null,
  performedViaGithubApp: json['performed_via_github_app'] != null ? Integration.fromJson(json['performed_via_github_app'] as Map<String, dynamic>) : null,
); }

final Uri url;

final int id;

final String nodeId;

/// The state of the status.
final DeploymentStatusState state;

final SimpleUser? creator;

/// A short description of the status.
final String description;

/// The environment of the deployment that the status is for.
final String environment;

/// Closing down notice: the URL to associate with this status.
final Uri targetUrl;

final DateTime createdAt;

final DateTime updatedAt;

final Uri deploymentUrl;

final Uri repositoryUrl;

/// The URL for accessing your environment.
final Uri? environmentUrl;

/// The URL to associate with this status.
final Uri? logUrl;

final Integration? performedViaGithubApp;

Map<String, dynamic> toJson() { return {
  'url': url.toString(),
  'id': id,
  'node_id': nodeId,
  'state': state.toJson(),
  if (creator != null) 'creator': creator?.toJson(),
  'description': description,
  'environment': environment,
  'target_url': targetUrl.toString(),
  'created_at': createdAt.toIso8601String(),
  'updated_at': updatedAt.toIso8601String(),
  'deployment_url': deploymentUrl.toString(),
  'repository_url': repositoryUrl.toString(),
  if (environmentUrl != null) 'environment_url': environmentUrl?.toString(),
  if (logUrl != null) 'log_url': logUrl?.toString(),
  if (performedViaGithubApp != null) 'performed_via_github_app': performedViaGithubApp?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('url') && json['url'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('state') &&
      json.containsKey('creator') &&
      json.containsKey('description') && json['description'] is String &&
      json.containsKey('target_url') && json['target_url'] is String &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('deployment_url') && json['deployment_url'] is String &&
      json.containsKey('repository_url') && json['repository_url'] is String; } 
DeploymentStatus copyWith({Uri? url, int? id, String? nodeId, DeploymentStatusState? state, SimpleUser? Function()? creator, String? description, String Function()? environment, Uri? targetUrl, DateTime? createdAt, DateTime? updatedAt, Uri? deploymentUrl, Uri? repositoryUrl, Uri Function()? environmentUrl, Uri Function()? logUrl, Integration? Function()? performedViaGithubApp, }) { return DeploymentStatus(
  url: url ?? this.url,
  id: id ?? this.id,
  nodeId: nodeId ?? this.nodeId,
  state: state ?? this.state,
  creator: creator != null ? creator() : this.creator,
  description: description ?? this.description,
  environment: environment != null ? environment() : this.environment,
  targetUrl: targetUrl ?? this.targetUrl,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
  deploymentUrl: deploymentUrl ?? this.deploymentUrl,
  repositoryUrl: repositoryUrl ?? this.repositoryUrl,
  environmentUrl: environmentUrl != null ? environmentUrl() : this.environmentUrl,
  logUrl: logUrl != null ? logUrl() : this.logUrl,
  performedViaGithubApp: performedViaGithubApp != null ? performedViaGithubApp() : this.performedViaGithubApp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeploymentStatus &&
          url == other.url &&
          id == other.id &&
          nodeId == other.nodeId &&
          state == other.state &&
          creator == other.creator &&
          description == other.description &&
          environment == other.environment &&
          targetUrl == other.targetUrl &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          deploymentUrl == other.deploymentUrl &&
          repositoryUrl == other.repositoryUrl &&
          environmentUrl == other.environmentUrl &&
          logUrl == other.logUrl &&
          performedViaGithubApp == other.performedViaGithubApp; } 
@override int get hashCode { return Object.hash(url, id, nodeId, state, creator, description, environment, targetUrl, createdAt, updatedAt, deploymentUrl, repositoryUrl, environmentUrl, logUrl, performedViaGithubApp); } 
@override String toString() { return 'DeploymentStatus(url: $url, id: $id, nodeId: $nodeId, state: $state, creator: $creator, description: $description, environment: $environment, targetUrl: $targetUrl, createdAt: $createdAt, updatedAt: $updatedAt, deploymentUrl: $deploymentUrl, repositoryUrl: $repositoryUrl, environmentUrl: $environmentUrl, logUrl: $logUrl, performedViaGithubApp: $performedViaGithubApp)'; } 
 }
