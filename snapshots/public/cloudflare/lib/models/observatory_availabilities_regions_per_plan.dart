// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'observatory_labeled_region.dart';/// Available regions.
final class ObservatoryAvailabilitiesRegionsPerPlan {const ObservatoryAvailabilitiesRegionsPerPlan({this.business, this.enterprise, this.free, this.pro, });

factory ObservatoryAvailabilitiesRegionsPerPlan.fromJson(Map<String, dynamic> json) { return ObservatoryAvailabilitiesRegionsPerPlan(
  business: (json['business'] as List<dynamic>?)?.map((e) => ObservatoryLabeledRegion.fromJson(e as Map<String, dynamic>)).toList(),
  enterprise: (json['enterprise'] as List<dynamic>?)?.map((e) => ObservatoryLabeledRegion.fromJson(e as Map<String, dynamic>)).toList(),
  free: (json['free'] as List<dynamic>?)?.map((e) => ObservatoryLabeledRegion.fromJson(e as Map<String, dynamic>)).toList(),
  pro: (json['pro'] as List<dynamic>?)?.map((e) => ObservatoryLabeledRegion.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ObservatoryLabeledRegion>? business;

final List<ObservatoryLabeledRegion>? enterprise;

final List<ObservatoryLabeledRegion>? free;

final List<ObservatoryLabeledRegion>? pro;

Map<String, dynamic> toJson() { return {
  if (business != null) 'business': business?.map((e) => e.toJson()).toList(),
  if (enterprise != null) 'enterprise': enterprise?.map((e) => e.toJson()).toList(),
  if (free != null) 'free': free?.map((e) => e.toJson()).toList(),
  if (pro != null) 'pro': pro?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'business', 'enterprise', 'free', 'pro'}.contains(key)); } 
ObservatoryAvailabilitiesRegionsPerPlan copyWith({List<ObservatoryLabeledRegion> Function()? business, List<ObservatoryLabeledRegion> Function()? enterprise, List<ObservatoryLabeledRegion> Function()? free, List<ObservatoryLabeledRegion> Function()? pro, }) { return ObservatoryAvailabilitiesRegionsPerPlan(
  business: business != null ? business() : this.business,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  free: free != null ? free() : this.free,
  pro: pro != null ? pro() : this.pro,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ObservatoryAvailabilitiesRegionsPerPlan &&
          listEquals(business, other.business) &&
          listEquals(enterprise, other.enterprise) &&
          listEquals(free, other.free) &&
          listEquals(pro, other.pro); } 
@override int get hashCode { return Object.hash(Object.hashAll(business ?? const []), Object.hashAll(enterprise ?? const []), Object.hashAll(free ?? const []), Object.hashAll(pro ?? const [])); } 
@override String toString() { return 'ObservatoryAvailabilitiesRegionsPerPlan(business: $business, enterprise: $enterprise, free: $free, pro: $pro)'; } 
 }
