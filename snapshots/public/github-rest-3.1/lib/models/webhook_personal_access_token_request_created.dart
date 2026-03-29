// GENERATED CODE - DO NOT MODIFY BY HAND

import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'personal_access_token_request.dart';import 'simple_installation.dart';import 'simple_user.dart';final class WebhookPersonalAccessTokenRequestCreatedAction {const WebhookPersonalAccessTokenRequestCreatedAction._(this.value);

factory WebhookPersonalAccessTokenRequestCreatedAction.fromJson(String json) { return switch (json) {
  'created' => created,
  _ => WebhookPersonalAccessTokenRequestCreatedAction._(json),
}; }

static const WebhookPersonalAccessTokenRequestCreatedAction created = WebhookPersonalAccessTokenRequestCreatedAction._('created');

static const List<WebhookPersonalAccessTokenRequestCreatedAction> values = [created];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookPersonalAccessTokenRequestCreatedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookPersonalAccessTokenRequestCreatedAction($value)'; } 
 }
final class WebhookPersonalAccessTokenRequestCreated {const WebhookPersonalAccessTokenRequestCreated({required this.action, required this.personalAccessTokenRequest, this.enterprise, required this.organization, required this.sender, this.installation, });

factory WebhookPersonalAccessTokenRequestCreated.fromJson(Map<String, dynamic> json) { return WebhookPersonalAccessTokenRequestCreated(
  action: WebhookPersonalAccessTokenRequestCreatedAction.fromJson(json['action'] as String),
  personalAccessTokenRequest: PersonalAccessTokenRequest.fromJson(json['personal_access_token_request'] as Map<String, dynamic>),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  organization: OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>),
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
); }

final WebhookPersonalAccessTokenRequestCreatedAction action;

final PersonalAccessTokenRequest personalAccessTokenRequest;

final EnterpriseWebhooks? enterprise;

final OrganizationSimpleWebhooks organization;

final SimpleUser sender;

final SimpleInstallation? installation;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  'personal_access_token_request': personalAccessTokenRequest.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  'organization': organization.toJson(),
  'sender': sender.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('personal_access_token_request') &&
      json.containsKey('organization') &&
      json.containsKey('sender'); } 
WebhookPersonalAccessTokenRequestCreated copyWith({WebhookPersonalAccessTokenRequestCreatedAction? action, PersonalAccessTokenRequest? personalAccessTokenRequest, EnterpriseWebhooks Function()? enterprise, OrganizationSimpleWebhooks? organization, SimpleUser? sender, SimpleInstallation Function()? installation, }) { return WebhookPersonalAccessTokenRequestCreated(
  action: action ?? this.action,
  personalAccessTokenRequest: personalAccessTokenRequest ?? this.personalAccessTokenRequest,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  organization: organization ?? this.organization,
  sender: sender ?? this.sender,
  installation: installation != null ? installation() : this.installation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPersonalAccessTokenRequestCreated &&
          action == other.action &&
          personalAccessTokenRequest == other.personalAccessTokenRequest &&
          enterprise == other.enterprise &&
          organization == other.organization &&
          sender == other.sender &&
          installation == other.installation; } 
@override int get hashCode { return Object.hash(action, personalAccessTokenRequest, enterprise, organization, sender, installation); } 
@override String toString() { return 'WebhookPersonalAccessTokenRequestCreated(action: $action, personalAccessTokenRequest: $personalAccessTokenRequest, enterprise: $enterprise, organization: $organization, sender: $sender, installation: $installation)'; } 
 }
