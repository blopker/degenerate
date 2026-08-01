// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'portal_resource_schedule_update_at_period_end.dart';import 'portal_subscription_update_product.dart';/// Determines the value to use for the billing cycle anchor on subscription updates. Valid values are `now` or `unchanged`, and the default value is `unchanged`. Setting the value to `now` resets the subscription's billing cycle anchor to the current time (in UTC). For more information, see the billing cycle [documentation](https://docs.stripe.com/billing/subscriptions/billing-cycle).
@immutable final class PortalSubscriptionUpdateBillingCycleAnchor {const PortalSubscriptionUpdateBillingCycleAnchor._(this.value);

factory PortalSubscriptionUpdateBillingCycleAnchor.fromJson(String json) { return switch (json) {
  'now' => now,
  'unchanged' => unchanged,
  _ => PortalSubscriptionUpdateBillingCycleAnchor._(json),
}; }

static const PortalSubscriptionUpdateBillingCycleAnchor now = PortalSubscriptionUpdateBillingCycleAnchor._('now');

static const PortalSubscriptionUpdateBillingCycleAnchor unchanged = PortalSubscriptionUpdateBillingCycleAnchor._('unchanged');

static const List<PortalSubscriptionUpdateBillingCycleAnchor> values = [now, unchanged];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PortalSubscriptionUpdateBillingCycleAnchor && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PortalSubscriptionUpdateBillingCycleAnchor($value)'; } 
 }
@immutable final class PortalSubscriptionUpdateDefaultAllowedUpdates {const PortalSubscriptionUpdateDefaultAllowedUpdates._(this.value);

factory PortalSubscriptionUpdateDefaultAllowedUpdates.fromJson(String json) { return switch (json) {
  'price' => price,
  'promotion_code' => promotionCode,
  'quantity' => quantity,
  _ => PortalSubscriptionUpdateDefaultAllowedUpdates._(json),
}; }

static const PortalSubscriptionUpdateDefaultAllowedUpdates price = PortalSubscriptionUpdateDefaultAllowedUpdates._('price');

static const PortalSubscriptionUpdateDefaultAllowedUpdates promotionCode = PortalSubscriptionUpdateDefaultAllowedUpdates._('promotion_code');

static const PortalSubscriptionUpdateDefaultAllowedUpdates quantity = PortalSubscriptionUpdateDefaultAllowedUpdates._('quantity');

static const List<PortalSubscriptionUpdateDefaultAllowedUpdates> values = [price, promotionCode, quantity];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PortalSubscriptionUpdateDefaultAllowedUpdates && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PortalSubscriptionUpdateDefaultAllowedUpdates($value)'; } 
 }
/// Determines how to handle prorations resulting from subscription updates. Valid values are `none`, `create_prorations`, and `always_invoice`. Defaults to a value of `none` if you don't set it during creation.
@immutable final class PortalSubscriptionUpdateProrationBehavior {const PortalSubscriptionUpdateProrationBehavior._(this.value);

factory PortalSubscriptionUpdateProrationBehavior.fromJson(String json) { return switch (json) {
  'always_invoice' => alwaysInvoice,
  'create_prorations' => createProrations,
  'none' => none,
  _ => PortalSubscriptionUpdateProrationBehavior._(json),
}; }

static const PortalSubscriptionUpdateProrationBehavior alwaysInvoice = PortalSubscriptionUpdateProrationBehavior._('always_invoice');

static const PortalSubscriptionUpdateProrationBehavior createProrations = PortalSubscriptionUpdateProrationBehavior._('create_prorations');

static const PortalSubscriptionUpdateProrationBehavior none = PortalSubscriptionUpdateProrationBehavior._('none');

static const List<PortalSubscriptionUpdateProrationBehavior> values = [alwaysInvoice, createProrations, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PortalSubscriptionUpdateProrationBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PortalSubscriptionUpdateProrationBehavior($value)'; } 
 }
/// Determines how handle updates to trialing subscriptions. Valid values are `end_trial` and `continue_trial`. Defaults to a value of `end_trial` if you don't set it during creation.
@immutable final class PortalSubscriptionUpdateTrialUpdateBehavior {const PortalSubscriptionUpdateTrialUpdateBehavior._(this.value);

factory PortalSubscriptionUpdateTrialUpdateBehavior.fromJson(String json) { return switch (json) {
  'continue_trial' => continueTrial,
  'end_trial' => endTrial,
  _ => PortalSubscriptionUpdateTrialUpdateBehavior._(json),
}; }

static const PortalSubscriptionUpdateTrialUpdateBehavior continueTrial = PortalSubscriptionUpdateTrialUpdateBehavior._('continue_trial');

static const PortalSubscriptionUpdateTrialUpdateBehavior endTrial = PortalSubscriptionUpdateTrialUpdateBehavior._('end_trial');

static const List<PortalSubscriptionUpdateTrialUpdateBehavior> values = [continueTrial, endTrial];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PortalSubscriptionUpdateTrialUpdateBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PortalSubscriptionUpdateTrialUpdateBehavior($value)'; } 
 }
/// 
@immutable final class PortalSubscriptionUpdate {const PortalSubscriptionUpdate({required this.defaultAllowedUpdates, required this.enabled, required this.prorationBehavior, required this.scheduleAtPeriodEnd, required this.trialUpdateBehavior, this.billingCycleAnchor = const Omittable.absent(), this.products = const Omittable.absent(), });

factory PortalSubscriptionUpdate.fromJson(Map<String, dynamic> json) { return PortalSubscriptionUpdate(
  billingCycleAnchor: json.containsKey('billing_cycle_anchor') ? Omittable(json['billing_cycle_anchor'] != null ? PortalSubscriptionUpdateBillingCycleAnchor.fromJson(json['billing_cycle_anchor'] as String) : null) : const Omittable.absent(),
  defaultAllowedUpdates: (json['default_allowed_updates'] as List<dynamic>).map((e) => PortalSubscriptionUpdateDefaultAllowedUpdates.fromJson(e as String)).toList(),
  enabled: json['enabled'] as bool,
  products: json.containsKey('products') ? Omittable((json['products'] as List<dynamic>?)?.map((e) => PortalSubscriptionUpdateProduct.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  prorationBehavior: PortalSubscriptionUpdateProrationBehavior.fromJson(json['proration_behavior'] as String),
  scheduleAtPeriodEnd: PortalResourceScheduleUpdateAtPeriodEnd.fromJson(json['schedule_at_period_end'] as Map<String, dynamic>),
  trialUpdateBehavior: PortalSubscriptionUpdateTrialUpdateBehavior.fromJson(json['trial_update_behavior'] as String),
); }

/// Determines the value to use for the billing cycle anchor on subscription updates. Valid values are `now` or `unchanged`, and the default value is `unchanged`. Setting the value to `now` resets the subscription's billing cycle anchor to the current time (in UTC). For more information, see the billing cycle [documentation](https://docs.stripe.com/billing/subscriptions/billing-cycle).
final Omittable<PortalSubscriptionUpdateBillingCycleAnchor?> billingCycleAnchor;

/// The types of subscription updates that are supported for items listed in the `products` attribute. When empty, subscriptions are not updateable.
final List<PortalSubscriptionUpdateDefaultAllowedUpdates> defaultAllowedUpdates;

/// Whether the feature is enabled.
final bool enabled;

/// The list of up to 10 products that support subscription updates.
final Omittable<List<PortalSubscriptionUpdateProduct>?> products;

/// Determines how to handle prorations resulting from subscription updates. Valid values are `none`, `create_prorations`, and `always_invoice`. Defaults to a value of `none` if you don't set it during creation.
final PortalSubscriptionUpdateProrationBehavior prorationBehavior;

final PortalResourceScheduleUpdateAtPeriodEnd scheduleAtPeriodEnd;

/// Determines how handle updates to trialing subscriptions. Valid values are `end_trial` and `continue_trial`. Defaults to a value of `end_trial` if you don't set it during creation.
final PortalSubscriptionUpdateTrialUpdateBehavior trialUpdateBehavior;

Map<String, dynamic> toJson() { return {
  if (billingCycleAnchor.isPresent) 'billing_cycle_anchor': billingCycleAnchor.value?.toJson(),
  'default_allowed_updates': defaultAllowedUpdates.map((e) => e.toJson()).toList(),
  'enabled': enabled,
  if (products.isPresent) 'products': products.value?.map((e) => e.toJson()).toList(),
  'proration_behavior': prorationBehavior.toJson(),
  'schedule_at_period_end': scheduleAtPeriodEnd.toJson(),
  'trial_update_behavior': trialUpdateBehavior.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('default_allowed_updates') &&
      json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('proration_behavior') &&
      json.containsKey('schedule_at_period_end') &&
      json.containsKey('trial_update_behavior'); } 
PortalSubscriptionUpdate copyWith({Omittable<PortalSubscriptionUpdateBillingCycleAnchor?>? billingCycleAnchor, List<PortalSubscriptionUpdateDefaultAllowedUpdates>? defaultAllowedUpdates, bool? enabled, Omittable<List<PortalSubscriptionUpdateProduct>?>? products, PortalSubscriptionUpdateProrationBehavior? prorationBehavior, PortalResourceScheduleUpdateAtPeriodEnd? scheduleAtPeriodEnd, PortalSubscriptionUpdateTrialUpdateBehavior? trialUpdateBehavior, }) { return PortalSubscriptionUpdate(
  billingCycleAnchor: billingCycleAnchor ?? this.billingCycleAnchor,
  defaultAllowedUpdates: defaultAllowedUpdates ?? this.defaultAllowedUpdates,
  enabled: enabled ?? this.enabled,
  products: products ?? this.products,
  prorationBehavior: prorationBehavior ?? this.prorationBehavior,
  scheduleAtPeriodEnd: scheduleAtPeriodEnd ?? this.scheduleAtPeriodEnd,
  trialUpdateBehavior: trialUpdateBehavior ?? this.trialUpdateBehavior,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PortalSubscriptionUpdate &&
          billingCycleAnchor == other.billingCycleAnchor &&
          listEquals(defaultAllowedUpdates, other.defaultAllowedUpdates) &&
          enabled == other.enabled &&
          products.isPresent == other.products.isPresent &&
          listEquals(products.value, other.products.value) &&
          prorationBehavior == other.prorationBehavior &&
          scheduleAtPeriodEnd == other.scheduleAtPeriodEnd &&
          trialUpdateBehavior == other.trialUpdateBehavior; } 
@override int get hashCode { return Object.hash(billingCycleAnchor, Object.hashAll(defaultAllowedUpdates), enabled, Object.hashAll(products.value ?? const []), prorationBehavior, scheduleAtPeriodEnd, trialUpdateBehavior); } 
@override String toString() { return 'PortalSubscriptionUpdate(billingCycleAnchor: $billingCycleAnchor, defaultAllowedUpdates: $defaultAllowedUpdates, enabled: $enabled, products: $products, prorationBehavior: $prorationBehavior, scheduleAtPeriodEnd: $scheduleAtPeriodEnd, trialUpdateBehavior: $trialUpdateBehavior)'; } 
 }
