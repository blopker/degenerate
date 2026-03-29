// GENERATED CODE - DO NOT MODIFY BY HAND

final class TeamsDevicesAntivirusInputRequest {const TeamsDevicesAntivirusInputRequest({this.updateWindowDays});

factory TeamsDevicesAntivirusInputRequest.fromJson(Map<String, dynamic> json) { return TeamsDevicesAntivirusInputRequest(
  updateWindowDays: json['update_window_days'] != null ? (json['update_window_days'] as num).toDouble() : null,
); }

/// Number of days that the antivirus should be updated within.
final double? updateWindowDays;

Map<String, dynamic> toJson() { return {
  'update_window_days': ?updateWindowDays,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
TeamsDevicesAntivirusInputRequest copyWith({double Function()? updateWindowDays}) { return TeamsDevicesAntivirusInputRequest(
  updateWindowDays: updateWindowDays != null ? updateWindowDays() : this.updateWindowDays,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesAntivirusInputRequest &&
          updateWindowDays == other.updateWindowDays; } 
@override int get hashCode { return updateWindowDays.hashCode; } 
@override String toString() { return 'TeamsDevicesAntivirusInputRequest(updateWindowDays: $updateWindowDays)'; } 
 }
