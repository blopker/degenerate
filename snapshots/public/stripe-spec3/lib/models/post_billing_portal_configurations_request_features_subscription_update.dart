// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_billing_portal_configurations_request_features_subscription_update_default_allowed_updates.dart';import 'post_billing_portal_configurations_request_features_subscription_update_products.dart';import 'post_billing_portal_configurations_request_features_subscription_update_products_variant1.dart';import 'post_billing_portal_configurations_request_features_subscription_update_schedule_at_period_end.dart';final class PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateBillingCycleAnchor {const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateBillingCycleAnchor._(this.value);

factory PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateBillingCycleAnchor.fromJson(String json) { return switch (json) {
  'now' => now,
  'unchanged' => unchanged,
  _ => PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateBillingCycleAnchor._(json),
}; }

static const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateBillingCycleAnchor now = PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateBillingCycleAnchor._('now');

static const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateBillingCycleAnchor unchanged = PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateBillingCycleAnchor._('unchanged');

static const List<PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateBillingCycleAnchor> values = [now, unchanged];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateBillingCycleAnchor && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateBillingCycleAnchor($value)'; } 
 }
final class PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProrationBehavior {const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProrationBehavior._(this.value);

factory PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProrationBehavior.fromJson(String json) { return switch (json) {
  'always_invoice' => alwaysInvoice,
  'create_prorations' => createProrations,
  'none' => none,
  _ => PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProrationBehavior._(json),
}; }

static const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProrationBehavior alwaysInvoice = PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProrationBehavior._('always_invoice');

static const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProrationBehavior createProrations = PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProrationBehavior._('create_prorations');

static const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProrationBehavior none = PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProrationBehavior._('none');

static const List<PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProrationBehavior> values = [alwaysInvoice, createProrations, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProrationBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProrationBehavior($value)'; } 
 }
final class PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateTrialUpdateBehavior {const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateTrialUpdateBehavior._(this.value);

factory PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateTrialUpdateBehavior.fromJson(String json) { return switch (json) {
  'continue_trial' => continueTrial,
  'end_trial' => endTrial,
  _ => PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateTrialUpdateBehavior._(json),
}; }

static const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateTrialUpdateBehavior continueTrial = PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateTrialUpdateBehavior._('continue_trial');

static const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateTrialUpdateBehavior endTrial = PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateTrialUpdateBehavior._('end_trial');

static const List<PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateTrialUpdateBehavior> values = [continueTrial, endTrial];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateTrialUpdateBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateTrialUpdateBehavior($value)'; } 
 }
final class PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdate {const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdate({this.billingCycleAnchor, this.defaultAllowedUpdates, required this.enabled, this.products, this.prorationBehavior, this.scheduleAtPeriodEnd, this.trialUpdateBehavior, });

factory PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdate.fromJson(Map<String, dynamic> json) { return PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdate(
  billingCycleAnchor: json['billing_cycle_anchor'] != null ? PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateBillingCycleAnchor.fromJson(json['billing_cycle_anchor'] as String) : null,
  defaultAllowedUpdates: json['default_allowed_updates'] != null ? OneOf2.parse(json['default_allowed_updates'], fromA: (v) => (v as List<dynamic>).map((e) => PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant1.fromJson(e as String)).toList(), fromB: (v) => PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdatesVariant2.fromJson(v as String),) : null,
  enabled: json['enabled'] as bool,
  products: json['products'] != null ? OneOf2.parse(json['products'], fromA: (v) => (v as List<dynamic>).map((e) => PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant1.fromJson(e as Map<String, dynamic>)).toList(), fromB: (v) => PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2.fromJson(v as String),) : null,
  prorationBehavior: json['proration_behavior'] != null ? PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProrationBehavior.fromJson(json['proration_behavior'] as String) : null,
  scheduleAtPeriodEnd: json['schedule_at_period_end'] != null ? PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEnd.fromJson(json['schedule_at_period_end'] as Map<String, dynamic>) : null,
  trialUpdateBehavior: json['trial_update_behavior'] != null ? PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateTrialUpdateBehavior.fromJson(json['trial_update_behavior'] as String) : null,
); }

final PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateBillingCycleAnchor? billingCycleAnchor;

final PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdates? defaultAllowedUpdates;

final bool enabled;

final PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProducts? products;

final PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProrationBehavior? prorationBehavior;

final PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEnd? scheduleAtPeriodEnd;

final PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateTrialUpdateBehavior? trialUpdateBehavior;

Map<String, dynamic> toJson() { return {
  if (billingCycleAnchor != null) 'billing_cycle_anchor': billingCycleAnchor?.toJson(),
  if (defaultAllowedUpdates != null) 'default_allowed_updates': defaultAllowedUpdates?.toJson(),
  'enabled': enabled,
  if (products != null) 'products': products?.toJson(),
  if (prorationBehavior != null) 'proration_behavior': prorationBehavior?.toJson(),
  if (scheduleAtPeriodEnd != null) 'schedule_at_period_end': scheduleAtPeriodEnd?.toJson(),
  if (trialUpdateBehavior != null) 'trial_update_behavior': trialUpdateBehavior?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdate copyWith({PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateBillingCycleAnchor Function()? billingCycleAnchor, PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateDefaultAllowedUpdates Function()? defaultAllowedUpdates, bool? enabled, PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProducts Function()? products, PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProrationBehavior Function()? prorationBehavior, PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateScheduleAtPeriodEnd Function()? scheduleAtPeriodEnd, PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateTrialUpdateBehavior Function()? trialUpdateBehavior, }) { return PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdate(
  billingCycleAnchor: billingCycleAnchor != null ? billingCycleAnchor() : this.billingCycleAnchor,
  defaultAllowedUpdates: defaultAllowedUpdates != null ? defaultAllowedUpdates() : this.defaultAllowedUpdates,
  enabled: enabled ?? this.enabled,
  products: products != null ? products() : this.products,
  prorationBehavior: prorationBehavior != null ? prorationBehavior() : this.prorationBehavior,
  scheduleAtPeriodEnd: scheduleAtPeriodEnd != null ? scheduleAtPeriodEnd() : this.scheduleAtPeriodEnd,
  trialUpdateBehavior: trialUpdateBehavior != null ? trialUpdateBehavior() : this.trialUpdateBehavior,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdate &&
          billingCycleAnchor == other.billingCycleAnchor &&
          defaultAllowedUpdates == other.defaultAllowedUpdates &&
          enabled == other.enabled &&
          products == other.products &&
          prorationBehavior == other.prorationBehavior &&
          scheduleAtPeriodEnd == other.scheduleAtPeriodEnd &&
          trialUpdateBehavior == other.trialUpdateBehavior; } 
@override int get hashCode { return Object.hash(billingCycleAnchor, defaultAllowedUpdates, enabled, products, prorationBehavior, scheduleAtPeriodEnd, trialUpdateBehavior); } 
@override String toString() { return 'PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdate(billingCycleAnchor: $billingCycleAnchor, defaultAllowedUpdates: $defaultAllowedUpdates, enabled: $enabled, products: $products, prorationBehavior: $prorationBehavior, scheduleAtPeriodEnd: $scheduleAtPeriodEnd, trialUpdateBehavior: $trialUpdateBehavior)'; } 
 }
