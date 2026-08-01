// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'quotes_resource_subscription_data_billing_mode.dart';/// 
@immutable final class QuotesResourceSubscriptionDataSubscriptionData {const QuotesResourceSubscriptionDataSubscriptionData({required this.billingMode, this.description = const Omittable.absent(), this.effectiveDate = const Omittable.absent(), this.metadata = const Omittable.absent(), this.trialPeriodDays = const Omittable.absent(), });

factory QuotesResourceSubscriptionDataSubscriptionData.fromJson(Map<String, dynamic> json) { return QuotesResourceSubscriptionDataSubscriptionData(
  billingMode: QuotesResourceSubscriptionDataBillingMode.fromJson(json['billing_mode'] as Map<String, dynamic>),
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  effectiveDate: json.containsKey('effective_date') ? Omittable(json['effective_date'] != null ? (json['effective_date'] as num).toInt() : null) : const Omittable.absent(),
  metadata: json.containsKey('metadata') ? Omittable((json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String))) : const Omittable.absent(),
  trialPeriodDays: json.containsKey('trial_period_days') ? Omittable(json['trial_period_days'] != null ? (json['trial_period_days'] as num).toInt() : null) : const Omittable.absent(),
); }

final QuotesResourceSubscriptionDataBillingMode billingMode;

/// The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
final Omittable<String?> description;

/// When creating a new subscription, the date of which the subscription schedule will start after the quote is accepted. This date is ignored if it is in the past when the quote is accepted. Measured in seconds since the Unix epoch.
final Omittable<int?> effectiveDate;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that will set metadata on the subscription or subscription schedule when the quote is accepted. If a recurring price is included in `line_items`, this field will be passed to the resulting subscription's `metadata` field. If `subscription_data.effective_date` is used, this field will be passed to the resulting subscription schedule's `phases.metadata` field. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
final Omittable<Map<String,String>?> metadata;

/// Integer representing the number of trial period days before the customer is charged for the first time.
final Omittable<int?> trialPeriodDays;

Map<String, dynamic> toJson() { return {
  'billing_mode': billingMode.toJson(),
  if (description.isPresent) 'description': description.value,
  if (effectiveDate.isPresent) 'effective_date': effectiveDate.value,
  if (metadata.isPresent) 'metadata': metadata.value,
  if (trialPeriodDays.isPresent) 'trial_period_days': trialPeriodDays.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('billing_mode'); } 
QuotesResourceSubscriptionDataSubscriptionData copyWith({QuotesResourceSubscriptionDataBillingMode? billingMode, Omittable<String?>? description, Omittable<int?>? effectiveDate, Omittable<Map<String,String>?>? metadata, Omittable<int?>? trialPeriodDays, }) { return QuotesResourceSubscriptionDataSubscriptionData(
  billingMode: billingMode ?? this.billingMode,
  description: description ?? this.description,
  effectiveDate: effectiveDate ?? this.effectiveDate,
  metadata: metadata ?? this.metadata,
  trialPeriodDays: trialPeriodDays ?? this.trialPeriodDays,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is QuotesResourceSubscriptionDataSubscriptionData &&
          billingMode == other.billingMode &&
          description == other.description &&
          effectiveDate == other.effectiveDate &&
          metadata == other.metadata &&
          trialPeriodDays == other.trialPeriodDays; } 
@override int get hashCode { return Object.hash(billingMode, description, effectiveDate, metadata, trialPeriodDays); } 
@override String toString() { return 'QuotesResourceSubscriptionDataSubscriptionData(billingMode: $billingMode, description: $description, effectiveDate: $effectiveDate, metadata: $metadata, trialPeriodDays: $trialPeriodDays)'; } 
 }
