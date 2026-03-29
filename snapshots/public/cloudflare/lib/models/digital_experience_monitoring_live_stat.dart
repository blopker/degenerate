// GENERATED CODE - DO NOT MODIFY BY HAND

import 'digital_experience_monitoring_unique_devices_total.dart';final class DigitalExperienceMonitoringLiveStat {const DigitalExperienceMonitoringLiveStat({this.uniqueDevicesTotal, this.value, });

factory DigitalExperienceMonitoringLiveStat.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringLiveStat(
  uniqueDevicesTotal: json['uniqueDevicesTotal'] != null ? DigitalExperienceMonitoringUniqueDevicesTotal.fromJson(json['uniqueDevicesTotal'] as num) : null,
  value: json['value'] as String?,
); }

final DigitalExperienceMonitoringUniqueDevicesTotal? uniqueDevicesTotal;

final String? value;

Map<String, dynamic> toJson() { return {
  if (uniqueDevicesTotal != null) 'uniqueDevicesTotal': uniqueDevicesTotal?.toJson(),
  'value': ?value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'uniqueDevicesTotal', 'value'}.contains(key)); } 
DigitalExperienceMonitoringLiveStat copyWith({DigitalExperienceMonitoringUniqueDevicesTotal Function()? uniqueDevicesTotal, String Function()? value, }) { return DigitalExperienceMonitoringLiveStat(
  uniqueDevicesTotal: uniqueDevicesTotal != null ? uniqueDevicesTotal() : this.uniqueDevicesTotal,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringLiveStat &&
          uniqueDevicesTotal == other.uniqueDevicesTotal &&
          value == other.value; } 
@override int get hashCode { return Object.hash(uniqueDevicesTotal, value); } 
@override String toString() { return 'DigitalExperienceMonitoringLiveStat(uniqueDevicesTotal: $uniqueDevicesTotal, value: $value)'; } 
 }
