// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class AccountDashboardSettings {const AccountDashboardSettings({this.displayName = const Omittable.absent(), this.timezone = const Omittable.absent(), });

factory AccountDashboardSettings.fromJson(Map<String, dynamic> json) { return AccountDashboardSettings(
  displayName: json.containsKey('display_name') ? Omittable(json['display_name'] as String?) : const Omittable.absent(),
  timezone: json.containsKey('timezone') ? Omittable(json['timezone'] as String?) : const Omittable.absent(),
); }

/// The display name for this account. This is used on the Stripe Dashboard to differentiate between accounts.
final Omittable<String?> displayName;

/// The timezone used in the Stripe Dashboard for this account. A list of possible time zone values is maintained at the [IANA Time Zone Database](http://www.iana.org/time-zones).
final Omittable<String?> timezone;

Map<String, dynamic> toJson() { return {
  if (displayName.isPresent) 'display_name': displayName.value,
  if (timezone.isPresent) 'timezone': timezone.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_name', 'timezone'}.contains(key)); } 
AccountDashboardSettings copyWith({Omittable<String?>? displayName, Omittable<String?>? timezone, }) { return AccountDashboardSettings(
  displayName: displayName ?? this.displayName,
  timezone: timezone ?? this.timezone,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountDashboardSettings &&
          displayName == other.displayName &&
          timezone == other.timezone; } 
@override int get hashCode { return Object.hash(displayName, timezone); } 
@override String toString() { return 'AccountDashboardSettings(displayName: $displayName, timezone: $timezone)'; } 
 }
