// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_customer_device_options.dart';import 'mconn_day_of_week.dart';import 'mconn_embargo_date.dart';@immutable final class MconnCustomerConnectorCreateRequest {const MconnCustomerConnectorCreateRequest({required this.device, this.activated, this.interruptWindowDaysOfWeek, this.interruptWindowDurationHours, this.interruptWindowEmbargoDates, this.interruptWindowHourOfDay, this.notes, this.timezone, });

factory MconnCustomerConnectorCreateRequest.fromJson(Map<String, dynamic> json) { return MconnCustomerConnectorCreateRequest(
  activated: json['activated'] as bool?,
  interruptWindowDaysOfWeek: (json['interrupt_window_days_of_week'] as List<dynamic>?)?.map((e) => MconnDayOfWeek.fromJson(e as String)).toList(),
  interruptWindowDurationHours: json['interrupt_window_duration_hours'] != null ? (json['interrupt_window_duration_hours'] as num).toDouble() : null,
  interruptWindowEmbargoDates: (json['interrupt_window_embargo_dates'] as List<dynamic>?)?.map((e) => MconnEmbargoDate.fromJson(e as String)).toList(),
  interruptWindowHourOfDay: json['interrupt_window_hour_of_day'] != null ? (json['interrupt_window_hour_of_day'] as num).toDouble() : null,
  notes: json['notes'] as String?,
  timezone: json['timezone'] as String?,
  device: MconnCustomerDeviceOptions.fromJson(json['device'] as Map<String, dynamic>),
); }

final bool? activated;

/// Allowed days of the week for upgrades. Default is all days.
final List<MconnDayOfWeek>? interruptWindowDaysOfWeek;

final double? interruptWindowDurationHours;

/// List of dates (YYYY-MM-DD) when upgrades are blocked.
final List<MconnEmbargoDate>? interruptWindowEmbargoDates;

final double? interruptWindowHourOfDay;

final String? notes;

final String? timezone;

final MconnCustomerDeviceOptions device;

Map<String, dynamic> toJson() { return {
  'activated': ?activated,
  if (interruptWindowDaysOfWeek != null) 'interrupt_window_days_of_week': interruptWindowDaysOfWeek?.map((e) => e.toJson()).toList(),
  'interrupt_window_duration_hours': ?interruptWindowDurationHours,
  if (interruptWindowEmbargoDates != null) 'interrupt_window_embargo_dates': interruptWindowEmbargoDates?.map((e) => e.toJson()).toList(),
  'interrupt_window_hour_of_day': ?interruptWindowHourOfDay,
  'notes': ?notes,
  'timezone': ?timezone,
  'device': device.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('device'); } 
MconnCustomerConnectorCreateRequest copyWith({bool Function()? activated, List<MconnDayOfWeek> Function()? interruptWindowDaysOfWeek, double Function()? interruptWindowDurationHours, List<MconnEmbargoDate> Function()? interruptWindowEmbargoDates, double Function()? interruptWindowHourOfDay, String Function()? notes, String Function()? timezone, MconnCustomerDeviceOptions? device, }) { return MconnCustomerConnectorCreateRequest(
  activated: activated != null ? activated() : this.activated,
  interruptWindowDaysOfWeek: interruptWindowDaysOfWeek != null ? interruptWindowDaysOfWeek() : this.interruptWindowDaysOfWeek,
  interruptWindowDurationHours: interruptWindowDurationHours != null ? interruptWindowDurationHours() : this.interruptWindowDurationHours,
  interruptWindowEmbargoDates: interruptWindowEmbargoDates != null ? interruptWindowEmbargoDates() : this.interruptWindowEmbargoDates,
  interruptWindowHourOfDay: interruptWindowHourOfDay != null ? interruptWindowHourOfDay() : this.interruptWindowHourOfDay,
  notes: notes != null ? notes() : this.notes,
  timezone: timezone != null ? timezone() : this.timezone,
  device: device ?? this.device,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnCustomerConnectorCreateRequest &&
          activated == other.activated &&
          listEquals(interruptWindowDaysOfWeek, other.interruptWindowDaysOfWeek) &&
          interruptWindowDurationHours == other.interruptWindowDurationHours &&
          listEquals(interruptWindowEmbargoDates, other.interruptWindowEmbargoDates) &&
          interruptWindowHourOfDay == other.interruptWindowHourOfDay &&
          notes == other.notes &&
          timezone == other.timezone &&
          device == other.device; } 
@override int get hashCode { return Object.hash(activated, Object.hashAll(interruptWindowDaysOfWeek ?? const []), interruptWindowDurationHours, Object.hashAll(interruptWindowEmbargoDates ?? const []), interruptWindowHourOfDay, notes, timezone, device); } 
@override String toString() { return 'MconnCustomerConnectorCreateRequest(activated: $activated, interruptWindowDaysOfWeek: $interruptWindowDaysOfWeek, interruptWindowDurationHours: $interruptWindowDurationHours, interruptWindowEmbargoDates: $interruptWindowEmbargoDates, interruptWindowHourOfDay: $interruptWindowHourOfDay, notes: $notes, timezone: $timezone, device: $device)'; } 
 }
