// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesRequestPhasesAutomaticTaxLiabilityType {const PostSubscriptionSchedulesRequestPhasesAutomaticTaxLiabilityType._(this.value);

factory PostSubscriptionSchedulesRequestPhasesAutomaticTaxLiabilityType.fromJson(String json) { return switch (json) {
  'account' => account,
  'self' => self,
  _ => PostSubscriptionSchedulesRequestPhasesAutomaticTaxLiabilityType._(json),
}; }

static const PostSubscriptionSchedulesRequestPhasesAutomaticTaxLiabilityType account = PostSubscriptionSchedulesRequestPhasesAutomaticTaxLiabilityType._('account');

static const PostSubscriptionSchedulesRequestPhasesAutomaticTaxLiabilityType self = PostSubscriptionSchedulesRequestPhasesAutomaticTaxLiabilityType._('self');

static const List<PostSubscriptionSchedulesRequestPhasesAutomaticTaxLiabilityType> values = [account, self];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesRequestPhasesAutomaticTaxLiabilityType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesRequestPhasesAutomaticTaxLiabilityType($value)'; } 
 }
@immutable final class PostSubscriptionSchedulesRequestPhasesAutomaticTaxLiability {const PostSubscriptionSchedulesRequestPhasesAutomaticTaxLiability({required this.type, this.account, });

factory PostSubscriptionSchedulesRequestPhasesAutomaticTaxLiability.fromJson(Map<String, dynamic> json) { return PostSubscriptionSchedulesRequestPhasesAutomaticTaxLiability(
  account: json['account'] as String?,
  type: PostSubscriptionSchedulesRequestPhasesAutomaticTaxLiabilityType.fromJson(json['type'] as String),
); }

final String? account;

final PostSubscriptionSchedulesRequestPhasesAutomaticTaxLiabilityType type;

Map<String, dynamic> toJson() { return {
  'account': ?account,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostSubscriptionSchedulesRequestPhasesAutomaticTaxLiability copyWith({String Function()? account, PostSubscriptionSchedulesRequestPhasesAutomaticTaxLiabilityType? type, }) { return PostSubscriptionSchedulesRequestPhasesAutomaticTaxLiability(
  account: account != null ? account() : this.account,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionSchedulesRequestPhasesAutomaticTaxLiability &&
          account == other.account &&
          type == other.type; } 
@override int get hashCode { return Object.hash(account, type); } 
@override String toString() { return 'PostSubscriptionSchedulesRequestPhasesAutomaticTaxLiability(account: $account, type: $type)'; } 
 }
