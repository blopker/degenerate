// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesRequestPhasesInvoiceSettingsIssuerType {const PostSubscriptionSchedulesRequestPhasesInvoiceSettingsIssuerType._(this.value);

factory PostSubscriptionSchedulesRequestPhasesInvoiceSettingsIssuerType.fromJson(String json) { return switch (json) {
  'account' => account,
  'self' => self,
  _ => PostSubscriptionSchedulesRequestPhasesInvoiceSettingsIssuerType._(json),
}; }

static const PostSubscriptionSchedulesRequestPhasesInvoiceSettingsIssuerType account = PostSubscriptionSchedulesRequestPhasesInvoiceSettingsIssuerType._('account');

static const PostSubscriptionSchedulesRequestPhasesInvoiceSettingsIssuerType self = PostSubscriptionSchedulesRequestPhasesInvoiceSettingsIssuerType._('self');

static const List<PostSubscriptionSchedulesRequestPhasesInvoiceSettingsIssuerType> values = [account, self];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesRequestPhasesInvoiceSettingsIssuerType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesRequestPhasesInvoiceSettingsIssuerType($value)'; } 
 }
@immutable final class PostSubscriptionSchedulesRequestPhasesInvoiceSettingsIssuer {const PostSubscriptionSchedulesRequestPhasesInvoiceSettingsIssuer({required this.type, this.account, });

factory PostSubscriptionSchedulesRequestPhasesInvoiceSettingsIssuer.fromJson(Map<String, dynamic> json) { return PostSubscriptionSchedulesRequestPhasesInvoiceSettingsIssuer(
  account: json['account'] as String?,
  type: PostSubscriptionSchedulesRequestPhasesInvoiceSettingsIssuerType.fromJson(json['type'] as String),
); }

final String? account;

final PostSubscriptionSchedulesRequestPhasesInvoiceSettingsIssuerType type;

Map<String, dynamic> toJson() { return {
  'account': ?account,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostSubscriptionSchedulesRequestPhasesInvoiceSettingsIssuer copyWith({String Function()? account, PostSubscriptionSchedulesRequestPhasesInvoiceSettingsIssuerType? type, }) { return PostSubscriptionSchedulesRequestPhasesInvoiceSettingsIssuer(
  account: account != null ? account() : this.account,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionSchedulesRequestPhasesInvoiceSettingsIssuer &&
          account == other.account &&
          type == other.type; } 
@override int get hashCode { return Object.hash(account, type); } 
@override String toString() { return 'PostSubscriptionSchedulesRequestPhasesInvoiceSettingsIssuer(account: $account, type: $type)'; } 
 }
