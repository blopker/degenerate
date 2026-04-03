// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_day_of_week.dart';import 'mconn_embargo_date.dart';@immutable final class MconnCustomerConnectorUpdateRequest {const MconnCustomerConnectorUpdateRequest({this.activated, this.interruptWindowDaysOfWeek, this.interruptWindowDurationHours, this.interruptWindowEmbargoDates, this.interruptWindowHourOfDay, this.notes, this.timezone, this.provisionLicense, });

factory MconnCustomerConnectorUpdateRequest.fromJson(Map<String, dynamic> json) { return MconnCustomerConnectorUpdateRequest(
  activated: json['activated'] as bool?,
  interruptWindowDaysOfWeek: (json['interrupt_window_days_of_week'] as List<dynamic>?)?.map((e) => MconnDayOfWeek.fromJson(e as String)).toList(),
  interruptWindowDurationHours: json['interrupt_window_duration_hours'] != null ? (json['interrupt_window_duration_hours'] as num).toDouble() : null,
  interruptWindowEmbargoDates: (json['interrupt_window_embargo_dates'] as List<dynamic>?)?.map((e) => MconnEmbargoDate.fromJson(e as String)).toList(),
  interruptWindowHourOfDay: json['interrupt_window_hour_of_day'] != null ? (json['interrupt_window_hour_of_day'] as num).toDouble() : null,
  notes: json['notes'] as String?,
  timezone: json['timezone'] as String?,
  provisionLicense: json['provision_license'] as bool?,
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

/// When true, regenerate license key for the connector.
final bool? provisionLicense;

Map<String, dynamic> toJson() { return {
  'activated': ?activated,
  if (interruptWindowDaysOfWeek != null) 'interrupt_window_days_of_week': interruptWindowDaysOfWeek?.map((e) => e.toJson()).toList(),
  'interrupt_window_duration_hours': ?interruptWindowDurationHours,
  if (interruptWindowEmbargoDates != null) 'interrupt_window_embargo_dates': interruptWindowEmbargoDates?.map((e) => e.toJson()).toList(),
  'interrupt_window_hour_of_day': ?interruptWindowHourOfDay,
  'notes': ?notes,
  'timezone': ?timezone,
  'provision_license': ?provisionLicense,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'activated', 'interrupt_window_days_of_week', 'interrupt_window_duration_hours', 'interrupt_window_embargo_dates', 'interrupt_window_hour_of_day', 'notes', 'timezone', 'provision_license'}.contains(key)); } 
MconnCustomerConnectorUpdateRequest copyWith({bool Function()? activated, List<MconnDayOfWeek> Function()? interruptWindowDaysOfWeek, double Function()? interruptWindowDurationHours, List<MconnEmbargoDate> Function()? interruptWindowEmbargoDates, double Function()? interruptWindowHourOfDay, String Function()? notes, String Function()? timezone, bool Function()? provisionLicense, }) { return MconnCustomerConnectorUpdateRequest(
  activated: activated != null ? activated() : this.activated,
  interruptWindowDaysOfWeek: interruptWindowDaysOfWeek != null ? interruptWindowDaysOfWeek() : this.interruptWindowDaysOfWeek,
  interruptWindowDurationHours: interruptWindowDurationHours != null ? interruptWindowDurationHours() : this.interruptWindowDurationHours,
  interruptWindowEmbargoDates: interruptWindowEmbargoDates != null ? interruptWindowEmbargoDates() : this.interruptWindowEmbargoDates,
  interruptWindowHourOfDay: interruptWindowHourOfDay != null ? interruptWindowHourOfDay() : this.interruptWindowHourOfDay,
  notes: notes != null ? notes() : this.notes,
  timezone: timezone != null ? timezone() : this.timezone,
  provisionLicense: provisionLicense != null ? provisionLicense() : this.provisionLicense,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnCustomerConnectorUpdateRequest &&
          activated == other.activated &&
          listEquals(interruptWindowDaysOfWeek, other.interruptWindowDaysOfWeek) &&
          interruptWindowDurationHours == other.interruptWindowDurationHours &&
          listEquals(interruptWindowEmbargoDates, other.interruptWindowEmbargoDates) &&
          interruptWindowHourOfDay == other.interruptWindowHourOfDay &&
          notes == other.notes &&
          timezone == other.timezone &&
          provisionLicense == other.provisionLicense; } 
@override int get hashCode { return Object.hash(activated, Object.hashAll(interruptWindowDaysOfWeek ?? const []), interruptWindowDurationHours, Object.hashAll(interruptWindowEmbargoDates ?? const []), interruptWindowHourOfDay, notes, timezone, provisionLicense); } 
@override String toString() { return 'MconnCustomerConnectorUpdateRequest(activated: $activated, interruptWindowDaysOfWeek: $interruptWindowDaysOfWeek, interruptWindowDurationHours: $interruptWindowDurationHours, interruptWindowEmbargoDates: $interruptWindowEmbargoDates, interruptWindowHourOfDay: $interruptWindowHourOfDay, notes: $notes, timezone: $timezone, provisionLicense: $provisionLicense)'; } 
 }
