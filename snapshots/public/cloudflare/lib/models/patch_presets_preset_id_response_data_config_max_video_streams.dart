// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Maximum number of streams that are visible on a device
@immutable final class PatchPresetsPresetIdResponseDataConfigMaxVideoStreams {const PatchPresetsPresetIdResponseDataConfigMaxVideoStreams({required this.desktop, required this.mobile, });

factory PatchPresetsPresetIdResponseDataConfigMaxVideoStreams.fromJson(Map<String, dynamic> json) { return PatchPresetsPresetIdResponseDataConfigMaxVideoStreams(
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
PatchPresetsPresetIdResponseDataConfigMaxVideoStreams copyWith({int? desktop, int? mobile, }) { return PatchPresetsPresetIdResponseDataConfigMaxVideoStreams(
  desktop: desktop ?? this.desktop,
  mobile: mobile ?? this.mobile,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PatchPresetsPresetIdResponseDataConfigMaxVideoStreams &&
          desktop == other.desktop &&
          mobile == other.mobile; } 
@override int get hashCode { return Object.hash(desktop, mobile); } 
@override String toString() { return 'PatchPresetsPresetIdResponseDataConfigMaxVideoStreams(desktop: $desktop, mobile: $mobile)'; } 
 }
