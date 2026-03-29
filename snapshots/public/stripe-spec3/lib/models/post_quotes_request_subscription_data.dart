// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_quotes_request_subscription_data_billing_mode.dart';import 'post_quotes_request_subscription_data_effective_date.dart';import 'post_quotes_request_subscription_data_trial_period_days.dart';/// When creating a subscription or subscription schedule, the specified configuration data will be used. There must be at least one line item with a recurring price for a subscription or subscription schedule to be created. A subscription schedule is created if `subscription_data[effective_date]` is present and in the future, otherwise a subscription is created.
final class PostQuotesRequestSubscriptionData {const PostQuotesRequestSubscriptionData({this.billingMode, this.description, this.effectiveDate, this.metadata, this.trialPeriodDays, });

factory PostQuotesRequestSubscriptionData.fromJson(Map<String, dynamic> json) { return PostQuotesRequestSubscriptionData(
  billingMode: json['billing_mode'] != null ? PostQuotesRequestSubscriptionDataBillingMode.fromJson(json['billing_mode'] as Map<String, dynamic>) : null,
  description: json['description'] as String?,
  effectiveDate: json['effective_date'] != null ? OneOf3.parse(json['effective_date'], fromA: (v) => PostQuotesRequestSubscriptionDataEffectiveDateVariant1.fromJson(v as String), fromB: (v) => (v as num).toInt(), fromC: (v) => PostQuotesRequestSubscriptionDataEffectiveDateVariant3.fromJson(v as String),) : null,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  trialPeriodDays: json['trial_period_days'] != null ? OneOf2.parse(json['trial_period_days'], fromA: (v) => (v as num).toInt(), fromB: (v) => PostQuotesRequestSubscriptionDataTrialPeriodDaysVariant2.fromJson(v as String),) : null,
); }

final PostQuotesRequestSubscriptionDataBillingMode? billingMode;

final String? description;

final PostQuotesRequestSubscriptionDataEffectiveDate? effectiveDate;

final Map<String,String>? metadata;

final PostQuotesRequestSubscriptionDataTrialPeriodDays? trialPeriodDays;

Map<String, dynamic> toJson() { return {
  if (billingMode != null) 'billing_mode': billingMode?.toJson(),
  'description': ?description,
  if (effectiveDate != null) 'effective_date': effectiveDate?.toJson(),
  'metadata': ?metadata,
  if (trialPeriodDays != null) 'trial_period_days': trialPeriodDays?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostQuotesRequestSubscriptionData copyWith({PostQuotesRequestSubscriptionDataBillingMode Function()? billingMode, String Function()? description, PostQuotesRequestSubscriptionDataEffectiveDate Function()? effectiveDate, Map<String, String> Function()? metadata, PostQuotesRequestSubscriptionDataTrialPeriodDays Function()? trialPeriodDays, }) { return PostQuotesRequestSubscriptionData(
  billingMode: billingMode != null ? billingMode() : this.billingMode,
  description: description != null ? description() : this.description,
  effectiveDate: effectiveDate != null ? effectiveDate() : this.effectiveDate,
  metadata: metadata != null ? metadata() : this.metadata,
  trialPeriodDays: trialPeriodDays != null ? trialPeriodDays() : this.trialPeriodDays,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostQuotesRequestSubscriptionData &&
          billingMode == other.billingMode &&
          description == other.description &&
          effectiveDate == other.effectiveDate &&
          metadata == other.metadata &&
          trialPeriodDays == other.trialPeriodDays; } 
@override int get hashCode { return Object.hash(billingMode, description, effectiveDate, metadata, trialPeriodDays); } 
@override String toString() { return 'PostQuotesRequestSubscriptionData(billingMode: $billingMode, description: $description, effectiveDate: $effectiveDate, metadata: $metadata, trialPeriodDays: $trialPeriodDays)'; } 
 }
