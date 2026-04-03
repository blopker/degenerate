// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsIssuerType {const PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsIssuerType._(this.value);

factory PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsIssuerType.fromJson(String json) { return switch (json) {
  'account' => account,
  'self' => self,
  _ => PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsIssuerType._(json),
}; }

static const PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsIssuerType account = PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsIssuerType._('account');

static const PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsIssuerType self = PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsIssuerType._('self');

static const List<PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsIssuerType> values = [account, self];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsIssuerType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsIssuerType($value)'; } 
 }
@immutable final class PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsIssuer {const PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsIssuer({required this.type, this.account, });

factory PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsIssuer.fromJson(Map<String, dynamic> json) { return PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsIssuer(
  account: json['account'] as String?,
  type: PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsIssuerType.fromJson(json['type'] as String),
); }

final String? account;

final PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsIssuerType type;

Map<String, dynamic> toJson() { return {
  'account': ?account,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsIssuer copyWith({String Function()? account, PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsIssuerType? type, }) { return PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsIssuer(
  account: account != null ? account() : this.account,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsIssuer &&
          account == other.account &&
          type == other.type; } 
@override int get hashCode { return Object.hash(account, type); } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsIssuer(account: $account, type: $type)'; } 
 }
