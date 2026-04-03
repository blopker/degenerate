// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhook_marketplace_purchase_changed_previous_marketplace_purchase.dart';import 'webhooks_marketplace_purchase.dart';@immutable final class WebhookMarketplacePurchaseChangedAction {const WebhookMarketplacePurchaseChangedAction._(this.value);

factory WebhookMarketplacePurchaseChangedAction.fromJson(String json) { return switch (json) {
  'changed' => changed,
  _ => WebhookMarketplacePurchaseChangedAction._(json),
}; }

static const WebhookMarketplacePurchaseChangedAction changed = WebhookMarketplacePurchaseChangedAction._('changed');

static const List<WebhookMarketplacePurchaseChangedAction> values = [changed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookMarketplacePurchaseChangedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookMarketplacePurchaseChangedAction($value)'; } 
 }
@immutable final class WebhookMarketplacePurchaseChanged {const WebhookMarketplacePurchaseChanged({required this.action, required this.effectiveDate, required this.marketplacePurchase, required this.sender, this.enterprise, this.installation, this.organization, this.previousMarketplacePurchase, this.repository, });

factory WebhookMarketplacePurchaseChanged.fromJson(Map<String, dynamic> json) { return WebhookMarketplacePurchaseChanged(
  action: WebhookMarketplacePurchaseChangedAction.fromJson(json['action'] as String),
  effectiveDate: json['effective_date'] as String,
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  marketplacePurchase: WebhooksMarketplacePurchase.fromJson(json['marketplace_purchase'] as Map<String, dynamic>),
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  previousMarketplacePurchase: json['previous_marketplace_purchase'] != null ? WebhookMarketplacePurchaseChangedPreviousMarketplacePurchase.fromJson(json['previous_marketplace_purchase'] as Map<String, dynamic>) : null,
  repository: json['repository'] != null ? RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>) : null,
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookMarketplacePurchaseChangedAction action;

final String effectiveDate;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final WebhooksMarketplacePurchase marketplacePurchase;

final OrganizationSimpleWebhooks? organization;

final WebhookMarketplacePurchaseChangedPreviousMarketplacePurchase? previousMarketplacePurchase;

final RepositoryWebhooks? repository;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  'effective_date': effectiveDate,
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  'marketplace_purchase': marketplacePurchase.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  if (previousMarketplacePurchase != null) 'previous_marketplace_purchase': previousMarketplacePurchase?.toJson(),
  if (repository != null) 'repository': repository?.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('effective_date') && json['effective_date'] is String &&
      json.containsKey('marketplace_purchase') &&
      json.containsKey('sender'); } 
WebhookMarketplacePurchaseChanged copyWith({WebhookMarketplacePurchaseChangedAction? action, String? effectiveDate, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, WebhooksMarketplacePurchase? marketplacePurchase, OrganizationSimpleWebhooks Function()? organization, WebhookMarketplacePurchaseChangedPreviousMarketplacePurchase Function()? previousMarketplacePurchase, RepositoryWebhooks Function()? repository, SimpleUser? sender, }) { return WebhookMarketplacePurchaseChanged(
  action: action ?? this.action,
  effectiveDate: effectiveDate ?? this.effectiveDate,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  marketplacePurchase: marketplacePurchase ?? this.marketplacePurchase,
  organization: organization != null ? organization() : this.organization,
  previousMarketplacePurchase: previousMarketplacePurchase != null ? previousMarketplacePurchase() : this.previousMarketplacePurchase,
  repository: repository != null ? repository() : this.repository,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookMarketplacePurchaseChanged &&
          action == other.action &&
          effectiveDate == other.effectiveDate &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          marketplacePurchase == other.marketplacePurchase &&
          organization == other.organization &&
          previousMarketplacePurchase == other.previousMarketplacePurchase &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, effectiveDate, enterprise, installation, marketplacePurchase, organization, previousMarketplacePurchase, repository, sender); } 
@override String toString() { return 'WebhookMarketplacePurchaseChanged(action: $action, effectiveDate: $effectiveDate, enterprise: $enterprise, installation: $installation, marketplacePurchase: $marketplacePurchase, organization: $organization, previousMarketplacePurchase: $previousMarketplacePurchase, repository: $repository, sender: $sender)'; } 
 }
