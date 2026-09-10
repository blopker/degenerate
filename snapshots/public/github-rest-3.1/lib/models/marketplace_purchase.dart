// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'marketplace_purchase_marketplace_pending_change.dart';import 'marketplace_purchase_marketplace_purchase.dart';/// Marketplace Purchase
@immutable final class MarketplacePurchase {const MarketplacePurchase({required this.url, required this.type, required this.id, required this.login, required this.marketplacePurchase, this.organizationBillingEmail, this.email = const Omittable.absent(), this.marketplacePendingChange = const Omittable.absent(), });

factory MarketplacePurchase.fromJson(Map<String, dynamic> json) { return MarketplacePurchase(
  url: json['url'] as String,
  type: json['type'] as String,
  id: (json['id'] as num).toInt(),
  login: json['login'] as String,
  organizationBillingEmail: json['organization_billing_email'] as String?,
  email: json.containsKey('email') ? Omittable(json['email'] as String?) : const Omittable.absent(),
  marketplacePendingChange: json.containsKey('marketplace_pending_change') ? Omittable(json['marketplace_pending_change'] != null ? MarketplacePurchaseMarketplacePendingChange.fromJson(json['marketplace_pending_change'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  marketplacePurchase: MarketplacePurchaseMarketplacePurchase.fromJson(json['marketplace_purchase'] as Map<String, dynamic>),
); }

final String url;

final String type;

final int id;

final String login;

final String? organizationBillingEmail;

final Omittable<String?> email;

final Omittable<MarketplacePurchaseMarketplacePendingChange?> marketplacePendingChange;

final MarketplacePurchaseMarketplacePurchase marketplacePurchase;

Map<String, dynamic> toJson() { return {
  'url': url,
  'type': type,
  'id': id,
  'login': login,
  'organization_billing_email': ?organizationBillingEmail,
  if (email.isPresent) 'email': email.value,
  if (marketplacePendingChange.isPresent) 'marketplace_pending_change': marketplacePendingChange.value?.toJson(),
  'marketplace_purchase': marketplacePurchase.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('url') && json['url'] is String &&
      json.containsKey('type') && json['type'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('login') && json['login'] is String &&
      json.containsKey('marketplace_purchase'); } 
MarketplacePurchase copyWith({String? url, String? type, int? id, String? login, String? Function()? organizationBillingEmail, Omittable<String?>? email, Omittable<MarketplacePurchaseMarketplacePendingChange?>? marketplacePendingChange, MarketplacePurchaseMarketplacePurchase? marketplacePurchase, }) { return MarketplacePurchase(
  url: url ?? this.url,
  type: type ?? this.type,
  id: id ?? this.id,
  login: login ?? this.login,
  organizationBillingEmail: organizationBillingEmail != null ? organizationBillingEmail() : this.organizationBillingEmail,
  email: email ?? this.email,
  marketplacePendingChange: marketplacePendingChange ?? this.marketplacePendingChange,
  marketplacePurchase: marketplacePurchase ?? this.marketplacePurchase,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MarketplacePurchase &&
          url == other.url &&
          type == other.type &&
          id == other.id &&
          login == other.login &&
          organizationBillingEmail == other.organizationBillingEmail &&
          email == other.email &&
          marketplacePendingChange == other.marketplacePendingChange &&
          marketplacePurchase == other.marketplacePurchase; } 
@override int get hashCode { return Object.hash(url, type, id, login, organizationBillingEmail, email, marketplacePendingChange, marketplacePurchase); } 
@override String toString() { return 'MarketplacePurchase(url: $url, type: $type, id: $id, login: $login, organizationBillingEmail: $organizationBillingEmail, email: $email, marketplacePendingChange: $marketplacePendingChange, marketplacePurchase: $marketplacePurchase)'; } 
 }
