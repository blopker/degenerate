// GENERATED CODE - DO NOT MODIFY BY HAND

final class TeamsDevicesOverrideCodes {const TeamsDevicesOverrideCodes({this.disableForTime});

factory TeamsDevicesOverrideCodes.fromJson(Map<String, dynamic> json) { return TeamsDevicesOverrideCodes(
  disableForTime: (json['disable_for_time'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
); }

final Map<String,String>? disableForTime;

Map<String, dynamic> toJson() { return {
  'disable_for_time': ?disableForTime,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'disable_for_time'}.contains(key)); } 
TeamsDevicesOverrideCodes copyWith({Map<String, String> Function()? disableForTime}) { return TeamsDevicesOverrideCodes(
  disableForTime: disableForTime != null ? disableForTime() : this.disableForTime,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesOverrideCodes &&
          disableForTime == other.disableForTime; } 
@override int get hashCode { return disableForTime.hashCode; } 
@override String toString() { return 'TeamsDevicesOverrideCodes(disableForTime: $disableForTime)'; } 
 }
