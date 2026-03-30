// GENERATED CODE - DO NOT MODIFY BY HAND

import 'observatory_plan_properties_info.dart';/// The number of tests available per plan.
final class ObservatoryAvailabilitiesQuotaQuotasPerPlan {const ObservatoryAvailabilitiesQuotaQuotasPerPlan({this.value});

factory ObservatoryAvailabilitiesQuotaQuotasPerPlan.fromJson(Map<String, dynamic> json) { return ObservatoryAvailabilitiesQuotaQuotasPerPlan(
  value: json['value'] != null ? ObservatoryPlanPropertiesInfo.fromJson(json['value'] as Map<String, dynamic>) : null,
); }

final ObservatoryPlanPropertiesInfo? value;

Map<String, dynamic> toJson() { return {
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'value'}.contains(key)); } 
ObservatoryAvailabilitiesQuotaQuotasPerPlan copyWith({ObservatoryPlanPropertiesInfo Function()? value}) { return ObservatoryAvailabilitiesQuotaQuotasPerPlan(
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ObservatoryAvailabilitiesQuotaQuotasPerPlan &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ObservatoryAvailabilitiesQuotaQuotasPerPlan(value: $value)'; } 
 }
