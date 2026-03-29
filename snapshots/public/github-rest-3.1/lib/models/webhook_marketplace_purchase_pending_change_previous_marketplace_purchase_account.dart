// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookMarketplacePurchasePendingChangePreviousMarketplacePurchaseAccount {const WebhookMarketplacePurchasePendingChangePreviousMarketplacePurchaseAccount({required this.id, required this.login, required this.nodeId, required this.organizationBillingEmail, required this.type, });

factory WebhookMarketplacePurchasePendingChangePreviousMarketplacePurchaseAccount.fromJson(Map<String, dynamic> json) { return WebhookMarketplacePurchasePendingChangePreviousMarketplacePurchaseAccount(
  id: (json['id'] as num).toInt(),
  login: json['login'] as String,
  nodeId: json['node_id'] as String,
  organizationBillingEmail: json['organization_billing_email'] as String?,
  type: json['type'] as String,
); }

final int id;

final String login;

final String nodeId;

final String? organizationBillingEmail;

final String type;

Map<String, dynamic> toJson() { return {
  'id': id,
  'login': login,
  'node_id': nodeId,
  'organization_billing_email': ?organizationBillingEmail,
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('login') && json['login'] is String &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('organization_billing_email') && json['organization_billing_email'] is String &&
      json.containsKey('type') && json['type'] is String; } 
WebhookMarketplacePurchasePendingChangePreviousMarketplacePurchaseAccount copyWith({int? id, String? login, String? nodeId, String? Function()? organizationBillingEmail, String? type, }) { return WebhookMarketplacePurchasePendingChangePreviousMarketplacePurchaseAccount(
  id: id ?? this.id,
  login: login ?? this.login,
  nodeId: nodeId ?? this.nodeId,
  organizationBillingEmail: organizationBillingEmail != null ? organizationBillingEmail() : this.organizationBillingEmail,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookMarketplacePurchasePendingChangePreviousMarketplacePurchaseAccount &&
          id == other.id &&
          login == other.login &&
          nodeId == other.nodeId &&
          organizationBillingEmail == other.organizationBillingEmail &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, login, nodeId, organizationBillingEmail, type); } 
@override String toString() { return 'WebhookMarketplacePurchasePendingChangePreviousMarketplacePurchaseAccount(id: $id, login: $login, nodeId: $nodeId, organizationBillingEmail: $organizationBillingEmail, type: $type)'; } 
 }
