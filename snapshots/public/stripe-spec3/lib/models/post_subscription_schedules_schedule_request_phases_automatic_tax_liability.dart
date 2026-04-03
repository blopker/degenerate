// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesScheduleRequestPhasesAutomaticTaxLiabilityType {const PostSubscriptionSchedulesScheduleRequestPhasesAutomaticTaxLiabilityType._(this.value);

factory PostSubscriptionSchedulesScheduleRequestPhasesAutomaticTaxLiabilityType.fromJson(String json) { return switch (json) {
  'account' => account,
  'self' => self,
  _ => PostSubscriptionSchedulesScheduleRequestPhasesAutomaticTaxLiabilityType._(json),
}; }

static const PostSubscriptionSchedulesScheduleRequestPhasesAutomaticTaxLiabilityType account = PostSubscriptionSchedulesScheduleRequestPhasesAutomaticTaxLiabilityType._('account');

static const PostSubscriptionSchedulesScheduleRequestPhasesAutomaticTaxLiabilityType self = PostSubscriptionSchedulesScheduleRequestPhasesAutomaticTaxLiabilityType._('self');

static const List<PostSubscriptionSchedulesScheduleRequestPhasesAutomaticTaxLiabilityType> values = [account, self];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestPhasesAutomaticTaxLiabilityType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestPhasesAutomaticTaxLiabilityType($value)'; } 
 }
@immutable final class PostSubscriptionSchedulesScheduleRequestPhasesAutomaticTaxLiability {const PostSubscriptionSchedulesScheduleRequestPhasesAutomaticTaxLiability({required this.type, this.account, });

factory PostSubscriptionSchedulesScheduleRequestPhasesAutomaticTaxLiability.fromJson(Map<String, dynamic> json) { return PostSubscriptionSchedulesScheduleRequestPhasesAutomaticTaxLiability(
  account: json['account'] as String?,
  type: PostSubscriptionSchedulesScheduleRequestPhasesAutomaticTaxLiabilityType.fromJson(json['type'] as String),
); }

final String? account;

final PostSubscriptionSchedulesScheduleRequestPhasesAutomaticTaxLiabilityType type;

Map<String, dynamic> toJson() { return {
  'account': ?account,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostSubscriptionSchedulesScheduleRequestPhasesAutomaticTaxLiability copyWith({String Function()? account, PostSubscriptionSchedulesScheduleRequestPhasesAutomaticTaxLiabilityType? type, }) { return PostSubscriptionSchedulesScheduleRequestPhasesAutomaticTaxLiability(
  account: account != null ? account() : this.account,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionSchedulesScheduleRequestPhasesAutomaticTaxLiability &&
          account == other.account &&
          type == other.type; } 
@override int get hashCode { return Object.hash(account, type); } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestPhasesAutomaticTaxLiability(account: $account, type: $type)'; } 
 }
