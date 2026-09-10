// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhooks_issue.dart';import 'webhooks_user_mannequin.dart';/// The action that was performed.
@immutable final class WebhookIssuesUnassignedAction {const WebhookIssuesUnassignedAction._(this.value);

factory WebhookIssuesUnassignedAction.fromJson(String json) {return switch (json) {
  'unassigned' => unassigned,
  _ => WebhookIssuesUnassignedAction._(json),
};}

static const WebhookIssuesUnassignedAction unassigned = WebhookIssuesUnassignedAction._('unassigned');

static const List<WebhookIssuesUnassignedAction> values = [unassigned];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WebhookIssuesUnassignedAction && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'WebhookIssuesUnassignedAction($value)';}
}
@immutable final class WebhookIssuesUnassigned {const WebhookIssuesUnassigned({required this.action, required this.issue, required this.repository, required this.sender, this.assignee = const Omittable.absent(), this.enterprise, this.installation, this.organization, });

factory WebhookIssuesUnassigned.fromJson(Map<String, dynamic> json) {return WebhookIssuesUnassigned(
  action: WebhookIssuesUnassignedAction.fromJson(json['action'] as String),
  assignee: json.containsKey('assignee') ? Omittable(json['assignee'] != null ? WebhooksUserMannequin.fromJson(json['assignee'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  issue: WebhooksIssue.fromJson(json['issue'] as Map<String, dynamic>),
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  repository: RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>),
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
);}

/// The action that was performed.
final WebhookIssuesUnassignedAction action;

final Omittable<WebhooksUserMannequin?> assignee;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final WebhooksIssue issue;

final OrganizationSimpleWebhooks? organization;

final RepositoryWebhooks repository;

final SimpleUser sender;

Map<String, dynamic> toJson() {return {
  'action': action.toJson(),
  if (assignee.isPresent) 'assignee': assignee.value?.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  'issue': issue.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'repository': repository.toJson(),
  'sender': sender.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('action') &&
      json.containsKey('issue') &&
      json.containsKey('repository') &&
      json.containsKey('sender');}
WebhookIssuesUnassigned copyWith({WebhookIssuesUnassignedAction? action, Omittable<WebhooksUserMannequin?>? assignee, EnterpriseWebhooks? Function()? enterprise, SimpleInstallation? Function()? installation, WebhooksIssue? issue, OrganizationSimpleWebhooks? Function()? organization, RepositoryWebhooks? repository, SimpleUser? sender, }) {return WebhookIssuesUnassigned(
  action: action ?? this.action,
  assignee: assignee ?? this.assignee,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  issue: issue ?? this.issue,
  organization: organization != null ? organization() : this.organization,
  repository: repository ?? this.repository,
  sender: sender ?? this.sender,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is WebhookIssuesUnassigned &&
          action == other.action &&
          assignee == other.assignee &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          issue == other.issue &&
          organization == other.organization &&
          repository == other.repository &&
          sender == other.sender;}
@override int get hashCode {return Object.hash(action, assignee, enterprise, installation, issue, organization, repository, sender);}
@override String toString() {return 'WebhookIssuesUnassigned(action: $action, assignee: $assignee, enterprise: $enterprise, installation: $installation, issue: $issue, organization: $organization, repository: $repository, sender: $sender)';}
}
