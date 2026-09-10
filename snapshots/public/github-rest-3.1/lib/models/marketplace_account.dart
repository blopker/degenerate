// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class MarketplaceAccount {const MarketplaceAccount({required this.url, required this.id, required this.type, required this.login, this.nodeId, this.email = const Omittable.absent(), this.organizationBillingEmail = const Omittable.absent(), });

factory MarketplaceAccount.fromJson(Map<String, dynamic> json) { return MarketplaceAccount(
  url: Uri.parse(json['url'] as String),
  id: (json['id'] as num).toInt(),
  type: json['type'] as String,
  nodeId: json['node_id'] as String?,
  login: json['login'] as String,
  email: json.containsKey('email') ? Omittable(json['email'] as String?) : const Omittable.absent(),
  organizationBillingEmail: json.containsKey('organization_billing_email') ? Omittable(json['organization_billing_email'] as String?) : const Omittable.absent(),
); }

final Uri url;

final int id;

final String type;

final String? nodeId;

final String login;

final Omittable<String?> email;

final Omittable<String?> organizationBillingEmail;

Map<String, dynamic> toJson() { return {
  'url': url.toString(),
  'id': id,
  'type': type,
  'node_id': ?nodeId,
  'login': login,
  if (email.isPresent) 'email': email.value,
  if (organizationBillingEmail.isPresent) 'organization_billing_email': organizationBillingEmail.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('url') && json['url'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('type') && json['type'] is String &&
      json.containsKey('login') && json['login'] is String; } 
MarketplaceAccount copyWith({Uri? url, int? id, String? type, String? Function()? nodeId, String? login, Omittable<String?>? email, Omittable<String?>? organizationBillingEmail, }) { return MarketplaceAccount(
  url: url ?? this.url,
  id: id ?? this.id,
  type: type ?? this.type,
  nodeId: nodeId != null ? nodeId() : this.nodeId,
  login: login ?? this.login,
  email: email ?? this.email,
  organizationBillingEmail: organizationBillingEmail ?? this.organizationBillingEmail,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MarketplaceAccount &&
          url == other.url &&
          id == other.id &&
          type == other.type &&
          nodeId == other.nodeId &&
          login == other.login &&
          email == other.email &&
          organizationBillingEmail == other.organizationBillingEmail; } 
@override int get hashCode { return Object.hash(url, id, type, nodeId, login, email, organizationBillingEmail); } 
@override String toString() { return 'MarketplaceAccount(url: $url, id: $id, type: $type, nodeId: $nodeId, login: $login, email: $email, organizationBillingEmail: $organizationBillingEmail)'; } 
 }
