// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTaxLiabilityType {const PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTaxLiabilityType._(this.value);

factory PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTaxLiabilityType.fromJson(String json) { return switch (json) {
  'account' => account,
  'self' => self,
  _ => PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTaxLiabilityType._(json),
}; }

static const PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTaxLiabilityType account = PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTaxLiabilityType._('account');

static const PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTaxLiabilityType self = PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTaxLiabilityType._('self');

static const List<PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTaxLiabilityType> values = [account, self];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTaxLiabilityType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTaxLiabilityType($value)'; } 
 }
@immutable final class PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTaxLiability {const PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTaxLiability({required this.type, this.account, });

factory PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTaxLiability.fromJson(Map<String, dynamic> json) { return PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTaxLiability(
  account: json['account'] as String?,
  type: PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTaxLiabilityType.fromJson(json['type'] as String),
); }

final String? account;

final PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTaxLiabilityType type;

Map<String, dynamic> toJson() { return {
  'account': ?account,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTaxLiability copyWith({String Function()? account, PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTaxLiabilityType? type, }) { return PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTaxLiability(
  account: account != null ? account() : this.account,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTaxLiability &&
          account == other.account &&
          type == other.type; } 
@override int get hashCode { return Object.hash(account, type); } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestDefaultSettingsAutomaticTaxLiability(account: $account, type: $type)'; } 
 }
