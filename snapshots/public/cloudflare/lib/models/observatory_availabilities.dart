// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'observatory_availabilities_quota.dart';import 'observatory_availabilities_regions_per_plan.dart';import 'observatory_labeled_region.dart';@immutable final class ObservatoryAvailabilities {const ObservatoryAvailabilities({this.quota, this.regions, this.regionsPerPlan, });

factory ObservatoryAvailabilities.fromJson(Map<String, dynamic> json) { return ObservatoryAvailabilities(
  quota: json['quota'] != null ? ObservatoryAvailabilitiesQuota.fromJson(json['quota'] as Map<String, dynamic>) : null,
  regions: (json['regions'] as List<dynamic>?)?.map((e) => ObservatoryLabeledRegion.fromJson(e as Map<String, dynamic>)).toList(),
  regionsPerPlan: json['regionsPerPlan'] != null ? ObservatoryAvailabilitiesRegionsPerPlan.fromJson(json['regionsPerPlan'] as Map<String, dynamic>) : null,
); }

final ObservatoryAvailabilitiesQuota? quota;

final List<ObservatoryLabeledRegion>? regions;

/// Available regions.
final ObservatoryAvailabilitiesRegionsPerPlan? regionsPerPlan;

Map<String, dynamic> toJson() { return {
  if (quota != null) 'quota': quota?.toJson(),
  if (regions != null) 'regions': regions?.map((e) => e.toJson()).toList(),
  if (regionsPerPlan != null) 'regionsPerPlan': regionsPerPlan?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'quota', 'regions', 'regionsPerPlan'}.contains(key)); } 
ObservatoryAvailabilities copyWith({ObservatoryAvailabilitiesQuota Function()? quota, List<ObservatoryLabeledRegion> Function()? regions, ObservatoryAvailabilitiesRegionsPerPlan Function()? regionsPerPlan, }) { return ObservatoryAvailabilities(
  quota: quota != null ? quota() : this.quota,
  regions: regions != null ? regions() : this.regions,
  regionsPerPlan: regionsPerPlan != null ? regionsPerPlan() : this.regionsPerPlan,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ObservatoryAvailabilities &&
          quota == other.quota &&
          listEquals(regions, other.regions) &&
          regionsPerPlan == other.regionsPerPlan; } 
@override int get hashCode { return Object.hash(quota, Object.hashAll(regions ?? const []), regionsPerPlan); } 
@override String toString() { return 'ObservatoryAvailabilities(quota: $quota, regions: $regions, regionsPerPlan: $regionsPerPlan)'; } 
 }
