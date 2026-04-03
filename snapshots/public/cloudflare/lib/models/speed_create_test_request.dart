// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'observatory_region.dart';@immutable final class SpeedCreateTestRequest {const SpeedCreateTestRequest({this.region});

factory SpeedCreateTestRequest.fromJson(Map<String, dynamic> json) { return SpeedCreateTestRequest(
  region: json['region'] != null ? ObservatoryRegion.fromJson(json['region'] as String) : null,
); }

/// A test region.
final ObservatoryRegion? region;

Map<String, dynamic> toJson() { return {
  if (region != null) 'region': region?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'region'}.contains(key)); } 
SpeedCreateTestRequest copyWith({ObservatoryRegion Function()? region}) { return SpeedCreateTestRequest(
  region: region != null ? region() : this.region,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SpeedCreateTestRequest &&
          region == other.region; } 
@override int get hashCode { return region.hashCode; } 
@override String toString() { return 'SpeedCreateTestRequest(region: $region)'; } 
 }
