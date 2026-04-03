// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';@immutable final class WebhookRepositoryDispatchSample {const WebhookRepositoryDispatchSample({required this.action, required this.branch, required this.clientPayload, required this.installation, required this.repository, required this.sender, this.enterprise, this.organization, });

factory WebhookRepositoryDispatchSample.fromJson(Map<String, dynamic> json) { return WebhookRepositoryDispatchSample(
  action: json['action'] as String,
  branch: json['branch'] as String,
  clientPayload: json['client_payload'] as Map<String, dynamic>?,
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>),
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  repository: RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>),
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

/// The `event_type` that was specified in the `POST /repos/{owner}/{repo}/dispatches` request body.
final String action;

final String branch;

/// The `client_payload` that was specified in the `POST /repos/{owner}/{repo}/dispatches` request body.
final Map<String,dynamic>? clientPayload;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation installation;

final OrganizationSimpleWebhooks? organization;

final RepositoryWebhooks repository;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action,
  'branch': branch,
  'client_payload': ?clientPayload,
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  'installation': installation.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'repository': repository.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') && json['action'] is String &&
      json.containsKey('branch') && json['branch'] is String &&
      json.containsKey('client_payload') &&
      json.containsKey('installation') &&
      json.containsKey('repository') &&
      json.containsKey('sender'); } 
WebhookRepositoryDispatchSample copyWith({String? action, String? branch, Map<String, dynamic>? Function()? clientPayload, EnterpriseWebhooks Function()? enterprise, SimpleInstallation? installation, OrganizationSimpleWebhooks Function()? organization, RepositoryWebhooks? repository, SimpleUser? sender, }) { return WebhookRepositoryDispatchSample(
  action: action ?? this.action,
  branch: branch ?? this.branch,
  clientPayload: clientPayload != null ? clientPayload() : this.clientPayload,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation ?? this.installation,
  organization: organization != null ? organization() : this.organization,
  repository: repository ?? this.repository,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRepositoryDispatchSample &&
          action == other.action &&
          branch == other.branch &&
          clientPayload == other.clientPayload &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          organization == other.organization &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, branch, clientPayload, enterprise, installation, organization, repository, sender); } 
@override String toString() { return 'WebhookRepositoryDispatchSample(action: $action, branch: $branch, clientPayload: $clientPayload, enterprise: $enterprise, installation: $installation, organization: $organization, repository: $repository, sender: $sender)'; } 
 }
