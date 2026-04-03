// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'deployment.dart';import 'organization_simple_webhooks.dart';import 'pull_request.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';@immutable final class WebhookDeploymentProtectionRuleRequestedAction {const WebhookDeploymentProtectionRuleRequestedAction._(this.value);

factory WebhookDeploymentProtectionRuleRequestedAction.fromJson(String json) { return switch (json) {
  'requested' => requested,
  _ => WebhookDeploymentProtectionRuleRequestedAction._(json),
}; }

static const WebhookDeploymentProtectionRuleRequestedAction requested = WebhookDeploymentProtectionRuleRequestedAction._('requested');

static const List<WebhookDeploymentProtectionRuleRequestedAction> values = [requested];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookDeploymentProtectionRuleRequestedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookDeploymentProtectionRuleRequestedAction($value)'; } 
 }
@immutable final class WebhookDeploymentProtectionRuleRequested {const WebhookDeploymentProtectionRuleRequested({this.action, this.environment, this.event, this.sha, this.ref, this.deploymentCallbackUrl, this.deployment, this.pullRequests, this.repository, this.organization, this.installation, this.sender, });

factory WebhookDeploymentProtectionRuleRequested.fromJson(Map<String, dynamic> json) { return WebhookDeploymentProtectionRuleRequested(
  action: json['action'] != null ? WebhookDeploymentProtectionRuleRequestedAction.fromJson(json['action'] as String) : null,
  environment: json['environment'] as String?,
  event: json['event'] as String?,
  sha: json['sha'] as String?,
  ref: json['ref'] as String?,
  deploymentCallbackUrl: json['deployment_callback_url'] != null ? Uri.parse(json['deployment_callback_url'] as String) : null,
  deployment: json['deployment'] != null ? Deployment.fromJson(json['deployment'] as Map<String, dynamic>) : null,
  pullRequests: (json['pull_requests'] as List<dynamic>?)?.map((e) => PullRequest.fromJson(e as Map<String, dynamic>)).toList(),
  repository: json['repository'] != null ? RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>) : null,
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  sender: json['sender'] != null ? SimpleUser.fromJson(json['sender'] as Map<String, dynamic>) : null,
); }

final WebhookDeploymentProtectionRuleRequestedAction? action;

/// The name of the environment that has the deployment protection rule.
final String? environment;

/// The event that triggered the deployment protection rule.
final String? event;

/// The commit SHA that triggered the workflow. Always populated from the check suite, regardless of whether a deployment is created.
final String? sha;

/// The ref (branch or tag) that triggered the workflow. Always populated from the check suite, regardless of whether a deployment is created.
final String? ref;

/// The URL to review the deployment protection rule.
final Uri? deploymentCallbackUrl;

final Deployment? deployment;

final List<PullRequest>? pullRequests;

final RepositoryWebhooks? repository;

final OrganizationSimpleWebhooks? organization;

final SimpleInstallation? installation;

final SimpleUser? sender;

Map<String, dynamic> toJson() { return {
  if (action != null) 'action': action?.toJson(),
  'environment': ?environment,
  'event': ?event,
  'sha': ?sha,
  'ref': ?ref,
  if (deploymentCallbackUrl != null) 'deployment_callback_url': deploymentCallbackUrl?.toString(),
  if (deployment != null) 'deployment': deployment?.toJson(),
  if (pullRequests != null) 'pull_requests': pullRequests?.map((e) => e.toJson()).toList(),
  if (repository != null) 'repository': repository?.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  if (sender != null) 'sender': sender?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'action', 'environment', 'event', 'sha', 'ref', 'deployment_callback_url', 'deployment', 'pull_requests', 'repository', 'organization', 'installation', 'sender'}.contains(key)); } 
WebhookDeploymentProtectionRuleRequested copyWith({WebhookDeploymentProtectionRuleRequestedAction Function()? action, String Function()? environment, String Function()? event, String Function()? sha, String Function()? ref, Uri Function()? deploymentCallbackUrl, Deployment? Function()? deployment, List<PullRequest> Function()? pullRequests, RepositoryWebhooks Function()? repository, OrganizationSimpleWebhooks Function()? organization, SimpleInstallation Function()? installation, SimpleUser Function()? sender, }) { return WebhookDeploymentProtectionRuleRequested(
  action: action != null ? action() : this.action,
  environment: environment != null ? environment() : this.environment,
  event: event != null ? event() : this.event,
  sha: sha != null ? sha() : this.sha,
  ref: ref != null ? ref() : this.ref,
  deploymentCallbackUrl: deploymentCallbackUrl != null ? deploymentCallbackUrl() : this.deploymentCallbackUrl,
  deployment: deployment != null ? deployment() : this.deployment,
  pullRequests: pullRequests != null ? pullRequests() : this.pullRequests,
  repository: repository != null ? repository() : this.repository,
  organization: organization != null ? organization() : this.organization,
  installation: installation != null ? installation() : this.installation,
  sender: sender != null ? sender() : this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookDeploymentProtectionRuleRequested &&
          action == other.action &&
          environment == other.environment &&
          event == other.event &&
          sha == other.sha &&
          ref == other.ref &&
          deploymentCallbackUrl == other.deploymentCallbackUrl &&
          deployment == other.deployment &&
          listEquals(pullRequests, other.pullRequests) &&
          repository == other.repository &&
          organization == other.organization &&
          installation == other.installation &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, environment, event, sha, ref, deploymentCallbackUrl, deployment, Object.hashAll(pullRequests ?? const []), repository, organization, installation, sender); } 
@override String toString() { return 'WebhookDeploymentProtectionRuleRequested(action: $action, environment: $environment, event: $event, sha: $sha, ref: $ref, deploymentCallbackUrl: $deploymentCallbackUrl, deployment: $deployment, pullRequests: $pullRequests, repository: $repository, organization: $organization, installation: $installation, sender: $sender)'; } 
 }
