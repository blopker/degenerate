// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enterprise_webhooks.dart';import 'full_repository.dart';import 'organization_simple_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhook_security_and_analysis_changes.dart';@immutable final class WebhookSecurityAndAnalysis {const WebhookSecurityAndAnalysis({required this.changes, required this.repository, this.enterprise, this.installation, this.organization, this.sender, });

factory WebhookSecurityAndAnalysis.fromJson(Map<String, dynamic> json) { return WebhookSecurityAndAnalysis(
  changes: WebhookSecurityAndAnalysisChanges.fromJson(json['changes'] as Map<String, dynamic>),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  repository: FullRepository.fromJson(json['repository'] as Map<String, dynamic>),
  sender: json['sender'] != null ? SimpleUser.fromJson(json['sender'] as Map<String, dynamic>) : null,
); }

final WebhookSecurityAndAnalysisChanges changes;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final OrganizationSimpleWebhooks? organization;

final FullRepository repository;

final SimpleUser? sender;

Map<String, dynamic> toJson() { return {
  'changes': changes.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'repository': repository.toJson(),
  if (sender != null) 'sender': sender?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('changes') &&
      json.containsKey('repository'); } 
WebhookSecurityAndAnalysis copyWith({WebhookSecurityAndAnalysisChanges? changes, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, OrganizationSimpleWebhooks Function()? organization, FullRepository? repository, SimpleUser Function()? sender, }) { return WebhookSecurityAndAnalysis(
  changes: changes ?? this.changes,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  organization: organization != null ? organization() : this.organization,
  repository: repository ?? this.repository,
  sender: sender != null ? sender() : this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookSecurityAndAnalysis &&
          changes == other.changes &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          organization == other.organization &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(changes, enterprise, installation, organization, repository, sender); } 
@override String toString() { return 'WebhookSecurityAndAnalysis(changes: $changes, enterprise: $enterprise, installation: $installation, organization: $organization, repository: $repository, sender: $sender)'; } 
 }
