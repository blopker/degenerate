// GENERATED CODE - DO NOT MODIFY BY HAND

import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhook_page_build_build.dart';final class WebhookPageBuild {const WebhookPageBuild({required this.build, this.enterprise, required this.id, this.installation, this.organization, required this.repository, required this.sender, });

factory WebhookPageBuild.fromJson(Map<String, dynamic> json) { return WebhookPageBuild(
  build: WebhookPageBuildBuild.fromJson(json['build'] as Map<String, dynamic>),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  id: (json['id'] as num).toInt(),
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  repository: RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>),
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

/// The [List GitHub Pages builds](https://docs.github.com/rest/pages/pages#list-github-pages-builds) itself.
final WebhookPageBuildBuild build;

final EnterpriseWebhooks? enterprise;

final int id;

final SimpleInstallation? installation;

final OrganizationSimpleWebhooks? organization;

final RepositoryWebhooks repository;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'build': build.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  'id': id,
  if (installation != null) 'installation': installation?.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'repository': repository.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('build') &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('repository') &&
      json.containsKey('sender'); } 
WebhookPageBuild copyWith({WebhookPageBuildBuild? build, EnterpriseWebhooks Function()? enterprise, int? id, SimpleInstallation Function()? installation, OrganizationSimpleWebhooks Function()? organization, RepositoryWebhooks? repository, SimpleUser? sender, }) { return WebhookPageBuild(
  build: build ?? this.build,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  id: id ?? this.id,
  installation: installation != null ? installation() : this.installation,
  organization: organization != null ? organization() : this.organization,
  repository: repository ?? this.repository,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPageBuild &&
          build == other.build &&
          enterprise == other.enterprise &&
          id == other.id &&
          installation == other.installation &&
          organization == other.organization &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(build, enterprise, id, installation, organization, repository, sender); } 
@override String toString() { return 'WebhookPageBuild(build: $build, enterprise: $enterprise, id: $id, installation: $installation, organization: $organization, repository: $repository, sender: $sender)'; } 
 }
