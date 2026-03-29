// GENERATED CODE - DO NOT MODIFY BY HAND

import 'marketplace_listing_plan.dart';final class MarketplacePurchaseMarketplacePendingChange {const MarketplacePurchaseMarketplacePendingChange({this.isInstalled, this.effectiveDate, this.unitCount, this.id, this.plan, });

factory MarketplacePurchaseMarketplacePendingChange.fromJson(Map<String, dynamic> json) { return MarketplacePurchaseMarketplacePendingChange(
  isInstalled: json['is_installed'] as bool?,
  effectiveDate: json['effective_date'] as String?,
  unitCount: json['unit_count'] != null ? (json['unit_count'] as num).toInt() : null,
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  plan: json['plan'] != null ? MarketplaceListingPlan.fromJson(json['plan'] as Map<String, dynamic>) : null,
); }

final bool? isInstalled;

final String? effectiveDate;

final int? unitCount;

final int? id;

final MarketplaceListingPlan? plan;

Map<String, dynamic> toJson() { return {
  'is_installed': ?isInstalled,
  'effective_date': ?effectiveDate,
  'unit_count': ?unitCount,
  'id': ?id,
  if (plan != null) 'plan': plan?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
MarketplacePurchaseMarketplacePendingChange copyWith({bool Function()? isInstalled, String Function()? effectiveDate, int? Function()? unitCount, int Function()? id, MarketplaceListingPlan Function()? plan, }) { return MarketplacePurchaseMarketplacePendingChange(
  isInstalled: isInstalled != null ? isInstalled() : this.isInstalled,
  effectiveDate: effectiveDate != null ? effectiveDate() : this.effectiveDate,
  unitCount: unitCount != null ? unitCount() : this.unitCount,
  id: id != null ? id() : this.id,
  plan: plan != null ? plan() : this.plan,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MarketplacePurchaseMarketplacePendingChange &&
          isInstalled == other.isInstalled &&
          effectiveDate == other.effectiveDate &&
          unitCount == other.unitCount &&
          id == other.id &&
          plan == other.plan; } 
@override int get hashCode { return Object.hash(isInstalled, effectiveDate, unitCount, id, plan); } 
@override String toString() { return 'MarketplacePurchaseMarketplacePendingChange(isInstalled: $isInstalled, effectiveDate: $effectiveDate, unitCount: $unitCount, id: $id, plan: $plan)'; } 
 }
