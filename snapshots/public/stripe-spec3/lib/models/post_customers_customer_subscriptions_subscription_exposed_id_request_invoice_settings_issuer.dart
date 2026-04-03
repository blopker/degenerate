// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuerType {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuerType._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuerType.fromJson(String json) { return switch (json) {
  'account' => account,
  'self' => self,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuerType._(json),
}; }

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuerType account = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuerType._('account');

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuerType self = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuerType._('self');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuerType> values = [account, self];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuerType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuerType($value)'; } 
 }
@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuer {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuer({required this.type, this.account, });

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuer.fromJson(Map<String, dynamic> json) { return PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuer(
  account: json['account'] as String?,
  type: PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuerType.fromJson(json['type'] as String),
); }

final String? account;

final PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuerType type;

Map<String, dynamic> toJson() { return {
  'account': ?account,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuer copyWith({String Function()? account, PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuerType? type, }) { return PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuer(
  account: account != null ? account() : this.account,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuer &&
          account == other.account &&
          type == other.type; } 
@override int get hashCode { return Object.hash(account, type); } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuer(account: $account, type: $type)'; } 
 }
