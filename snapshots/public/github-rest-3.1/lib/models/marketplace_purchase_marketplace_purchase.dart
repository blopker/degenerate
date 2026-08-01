// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'marketplace_listing_plan.dart';@immutable final class MarketplacePurchaseMarketplacePurchase {const MarketplacePurchaseMarketplacePurchase({this.billingCycle, this.nextBillingDate = const Omittable.absent(), this.isInstalled, this.unitCount = const Omittable.absent(), this.onFreeTrial, this.freeTrialEndsOn = const Omittable.absent(), this.updatedAt, this.plan, });

factory MarketplacePurchaseMarketplacePurchase.fromJson(Map<String, dynamic> json) { return MarketplacePurchaseMarketplacePurchase(
  billingCycle: json['billing_cycle'] as String?,
  nextBillingDate: json.containsKey('next_billing_date') ? Omittable(json['next_billing_date'] as String?) : const Omittable.absent(),
  isInstalled: json['is_installed'] as bool?,
  unitCount: json.containsKey('unit_count') ? Omittable(json['unit_count'] != null ? (json['unit_count'] as num).toInt() : null) : const Omittable.absent(),
  onFreeTrial: json['on_free_trial'] as bool?,
  freeTrialEndsOn: json.containsKey('free_trial_ends_on') ? Omittable(json['free_trial_ends_on'] as String?) : const Omittable.absent(),
  updatedAt: json['updated_at'] as String?,
  plan: json['plan'] != null ? MarketplaceListingPlan.fromJson(json['plan'] as Map<String, dynamic>) : null,
); }

final String? billingCycle;

final Omittable<String?> nextBillingDate;

final bool? isInstalled;

final Omittable<int?> unitCount;

final bool? onFreeTrial;

final Omittable<String?> freeTrialEndsOn;

final String? updatedAt;

final MarketplaceListingPlan? plan;

Map<String, dynamic> toJson() { return {
  'billing_cycle': ?billingCycle,
  if (nextBillingDate.isPresent) 'next_billing_date': nextBillingDate.value,
  'is_installed': ?isInstalled,
  if (unitCount.isPresent) 'unit_count': unitCount.value,
  'on_free_trial': ?onFreeTrial,
  if (freeTrialEndsOn.isPresent) 'free_trial_ends_on': freeTrialEndsOn.value,
  'updated_at': ?updatedAt,
  if (plan != null) 'plan': plan?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'billing_cycle', 'next_billing_date', 'is_installed', 'unit_count', 'on_free_trial', 'free_trial_ends_on', 'updated_at', 'plan'}.contains(key)); } 
MarketplacePurchaseMarketplacePurchase copyWith({String? Function()? billingCycle, Omittable<String?>? nextBillingDate, bool? Function()? isInstalled, Omittable<int?>? unitCount, bool? Function()? onFreeTrial, Omittable<String?>? freeTrialEndsOn, String? Function()? updatedAt, MarketplaceListingPlan? Function()? plan, }) { return MarketplacePurchaseMarketplacePurchase(
  billingCycle: billingCycle != null ? billingCycle() : this.billingCycle,
  nextBillingDate: nextBillingDate ?? this.nextBillingDate,
  isInstalled: isInstalled != null ? isInstalled() : this.isInstalled,
  unitCount: unitCount ?? this.unitCount,
  onFreeTrial: onFreeTrial != null ? onFreeTrial() : this.onFreeTrial,
  freeTrialEndsOn: freeTrialEndsOn ?? this.freeTrialEndsOn,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  plan: plan != null ? plan() : this.plan,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MarketplacePurchaseMarketplacePurchase &&
          billingCycle == other.billingCycle &&
          nextBillingDate == other.nextBillingDate &&
          isInstalled == other.isInstalled &&
          unitCount == other.unitCount &&
          onFreeTrial == other.onFreeTrial &&
          freeTrialEndsOn == other.freeTrialEndsOn &&
          updatedAt == other.updatedAt &&
          plan == other.plan; } 
@override int get hashCode { return Object.hash(billingCycle, nextBillingDate, isInstalled, unitCount, onFreeTrial, freeTrialEndsOn, updatedAt, plan); } 
@override String toString() { return 'MarketplacePurchaseMarketplacePurchase(billingCycle: $billingCycle, nextBillingDate: $nextBillingDate, isInstalled: $isInstalled, unitCount: $unitCount, onFreeTrial: $onFreeTrial, freeTrialEndsOn: $freeTrialEndsOn, updatedAt: $updatedAt, plan: $plan)'; } 
 }
