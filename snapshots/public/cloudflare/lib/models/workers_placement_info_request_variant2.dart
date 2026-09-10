// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorkersPlacementInfoRequestVariant2 {const WorkersPlacementInfoRequestVariant2({required this.region});

factory WorkersPlacementInfoRequestVariant2.fromJson(Map<String, dynamic> json) { return WorkersPlacementInfoRequestVariant2(
  region: json['region'] as String,
); }

/// Cloud region for targeted placement in format 'provider:region'.
final String region;

Map<String, dynamic> toJson() { return {
  'region': region,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('region') && json['region'] is String; } 
WorkersPlacementInfoRequestVariant2 copyWith({String? region}) { return WorkersPlacementInfoRequestVariant2(
  region: region ?? this.region,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersPlacementInfoRequestVariant2 &&
          region == other.region; } 
@override int get hashCode { return region.hashCode; } 
@override String toString() { return 'WorkersPlacementInfoRequestVariant2(region: $region)'; } 
 }
