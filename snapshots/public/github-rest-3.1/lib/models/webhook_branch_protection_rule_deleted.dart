// GENERATED CODE - DO NOT MODIFY BY HAND

import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhooks_rule.dart';final class WebhookBranchProtectionRuleDeletedAction {const WebhookBranchProtectionRuleDeletedAction._(this.value);

factory WebhookBranchProtectionRuleDeletedAction.fromJson(String json) { return switch (json) {
  'deleted' => deleted,
  _ => WebhookBranchProtectionRuleDeletedAction._(json),
}; }

static const WebhookBranchProtectionRuleDeletedAction deleted = WebhookBranchProtectionRuleDeletedAction._('deleted');

static const List<WebhookBranchProtectionRuleDeletedAction> values = [deleted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookBranchProtectionRuleDeletedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookBranchProtectionRuleDeletedAction($value)'; } 
 }
final class WebhookBranchProtectionRuleDeleted {const WebhookBranchProtectionRuleDeleted({required this.action, this.enterprise, this.installation, this.organization, required this.repository, required this.rule, required this.sender, });

factory WebhookBranchProtectionRuleDeleted.fromJson(Map<String, dynamic> json) { return WebhookBranchProtectionRuleDeleted(
  action: WebhookBranchProtectionRuleDeletedAction.fromJson(json['action'] as String),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  repository: RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>),
  rule: WebhooksRule.fromJson(json['rule'] as Map<String, dynamic>),
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookBranchProtectionRuleDeletedAction action;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final OrganizationSimpleWebhooks? organization;

final RepositoryWebhooks repository;

final WebhooksRule rule;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'repository': repository.toJson(),
  'rule': rule.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('repository') &&
      json.containsKey('rule') &&
      json.containsKey('sender'); } 
WebhookBranchProtectionRuleDeleted copyWith({WebhookBranchProtectionRuleDeletedAction? action, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, OrganizationSimpleWebhooks Function()? organization, RepositoryWebhooks? repository, WebhooksRule? rule, SimpleUser? sender, }) { return WebhookBranchProtectionRuleDeleted(
  action: action ?? this.action,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  organization: organization != null ? organization() : this.organization,
  repository: repository ?? this.repository,
  rule: rule ?? this.rule,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookBranchProtectionRuleDeleted &&
          action == other.action &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          organization == other.organization &&
          repository == other.repository &&
          rule == other.rule &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, enterprise, installation, organization, repository, rule, sender); } 
@override String toString() { return 'WebhookBranchProtectionRuleDeleted(action: $action, enterprise: $enterprise, installation: $installation, organization: $organization, repository: $repository, rule: $rule, sender: $sender)'; } 
 }
