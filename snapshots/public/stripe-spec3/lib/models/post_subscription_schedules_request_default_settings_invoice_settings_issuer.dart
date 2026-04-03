// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsIssuerType {const PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsIssuerType._(this.value);

factory PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsIssuerType.fromJson(String json) { return switch (json) {
  'account' => account,
  'self' => self,
  _ => PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsIssuerType._(json),
}; }

static const PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsIssuerType account = PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsIssuerType._('account');

static const PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsIssuerType self = PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsIssuerType._('self');

static const List<PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsIssuerType> values = [account, self];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsIssuerType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsIssuerType($value)'; } 
 }
@immutable final class PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsIssuer {const PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsIssuer({required this.type, this.account, });

factory PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsIssuer.fromJson(Map<String, dynamic> json) { return PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsIssuer(
  account: json['account'] as String?,
  type: PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsIssuerType.fromJson(json['type'] as String),
); }

final String? account;

final PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsIssuerType type;

Map<String, dynamic> toJson() { return {
  'account': ?account,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsIssuer copyWith({String Function()? account, PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsIssuerType? type, }) { return PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsIssuer(
  account: account != null ? account() : this.account,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsIssuer &&
          account == other.account &&
          type == other.type; } 
@override int get hashCode { return Object.hash(account, type); } 
@override String toString() { return 'PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsIssuer(account: $account, type: $type)'; } 
 }
