// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomersCustomerSubscriptionsRequestInvoiceSettingsIssuerType {const PostCustomersCustomerSubscriptionsRequestInvoiceSettingsIssuerType._(this.value);

factory PostCustomersCustomerSubscriptionsRequestInvoiceSettingsIssuerType.fromJson(String json) { return switch (json) {
  'account' => account,
  'self' => self,
  _ => PostCustomersCustomerSubscriptionsRequestInvoiceSettingsIssuerType._(json),
}; }

static const PostCustomersCustomerSubscriptionsRequestInvoiceSettingsIssuerType account = PostCustomersCustomerSubscriptionsRequestInvoiceSettingsIssuerType._('account');

static const PostCustomersCustomerSubscriptionsRequestInvoiceSettingsIssuerType self = PostCustomersCustomerSubscriptionsRequestInvoiceSettingsIssuerType._('self');

static const List<PostCustomersCustomerSubscriptionsRequestInvoiceSettingsIssuerType> values = [account, self];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsRequestInvoiceSettingsIssuerType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsRequestInvoiceSettingsIssuerType($value)'; } 
 }
@immutable final class PostCustomersCustomerSubscriptionsRequestInvoiceSettingsIssuer {const PostCustomersCustomerSubscriptionsRequestInvoiceSettingsIssuer({required this.type, this.account, });

factory PostCustomersCustomerSubscriptionsRequestInvoiceSettingsIssuer.fromJson(Map<String, dynamic> json) { return PostCustomersCustomerSubscriptionsRequestInvoiceSettingsIssuer(
  account: json['account'] as String?,
  type: PostCustomersCustomerSubscriptionsRequestInvoiceSettingsIssuerType.fromJson(json['type'] as String),
); }

final String? account;

final PostCustomersCustomerSubscriptionsRequestInvoiceSettingsIssuerType type;

Map<String, dynamic> toJson() { return {
  'account': ?account,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostCustomersCustomerSubscriptionsRequestInvoiceSettingsIssuer copyWith({String Function()? account, PostCustomersCustomerSubscriptionsRequestInvoiceSettingsIssuerType? type, }) { return PostCustomersCustomerSubscriptionsRequestInvoiceSettingsIssuer(
  account: account != null ? account() : this.account,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsRequestInvoiceSettingsIssuer &&
          account == other.account &&
          type == other.type; } 
@override int get hashCode { return Object.hash(account, type); } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsRequestInvoiceSettingsIssuer(account: $account, type: $type)'; } 
 }
