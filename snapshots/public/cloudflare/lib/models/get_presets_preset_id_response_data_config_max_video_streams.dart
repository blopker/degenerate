// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Maximum number of streams that are visible on a device
@immutable final class GetPresetsPresetIdResponseDataConfigMaxVideoStreams {const GetPresetsPresetIdResponseDataConfigMaxVideoStreams({required this.desktop, required this.mobile, });

factory GetPresetsPresetIdResponseDataConfigMaxVideoStreams.fromJson(Map<String, dynamic> json) { return GetPresetsPresetIdResponseDataConfigMaxVideoStreams(
  desktop: (json['desktop'] as num).toInt(),
  mobile: (json['mobile'] as num).toInt(),
); }

/// Maximum number of video streams visible on desktop devices
final int desktop;

/// Maximum number of streams visible on mobile devices
final int mobile;

Map<String, dynamic> toJson() { return {
  'desktop': desktop,
  'mobile': mobile,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('desktop') && json['desktop'] is num &&
      json.containsKey('mobile') && json['mobile'] is num; } 
GetPresetsPresetIdResponseDataConfigMaxVideoStreams copyWith({int? desktop, int? mobile, }) { return GetPresetsPresetIdResponseDataConfigMaxVideoStreams(
  desktop: desktop ?? this.desktop,
  mobile: mobile ?? this.mobile,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetPresetsPresetIdResponseDataConfigMaxVideoStreams &&
          desktop == other.desktop &&
          mobile == other.mobile; } 
@override int get hashCode { return Object.hash(desktop, mobile); } 
@override String toString() { return 'GetPresetsPresetIdResponseDataConfigMaxVideoStreams(desktop: $desktop, mobile: $mobile)'; } 
 }
