// GENERATED CODE - DO NOT MODIFY BY HAND

import 'observatory_plan_properties_info.dart';/// The number of schedules available per plan.
final class ObservatoryAvailabilitiesQuotaScheduleQuotasPerPlan {const ObservatoryAvailabilitiesQuotaScheduleQuotasPerPlan({this.value});

factory ObservatoryAvailabilitiesQuotaScheduleQuotasPerPlan.fromJson(Map<String, dynamic> json) { return ObservatoryAvailabilitiesQuotaScheduleQuotasPerPlan(
  value: json['value'] != null ? ObservatoryPlanPropertiesInfo.fromJson(json['value'] as Map<String, dynamic>) : null,
); }

final ObservatoryPlanPropertiesInfo? value;

Map<String, dynamic> toJson() { return {
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'value'}.contains(key)); } 
ObservatoryAvailabilitiesQuotaScheduleQuotasPerPlan copyWith({ObservatoryPlanPropertiesInfo Function()? value}) { return ObservatoryAvailabilitiesQuotaScheduleQuotasPerPlan(
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ObservatoryAvailabilitiesQuotaScheduleQuotasPerPlan &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ObservatoryAvailabilitiesQuotaScheduleQuotasPerPlan(value: $value)'; } 
 }
