// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class RadarGetCtTimeseriesGroupResponseResultSerie0Variant3 {const RadarGetCtTimeseriesGroupResponseResultSerie0Variant3({required this.gt3dLte16d, required this.gt16dLte31d, required this.gt31dLte91d, required this.gt91dLte121d, required this.gt121d, required this.lte3d, });

factory RadarGetCtTimeseriesGroupResponseResultSerie0Variant3.fromJson(Map<String, dynamic> json) { return RadarGetCtTimeseriesGroupResponseResultSerie0Variant3(
  gt3dLte16d: (json['gt_3d_lte_16d'] as List<dynamic>).map((e) => e as String).toList(),
  gt16dLte31d: (json['gt_16d_lte_31d'] as List<dynamic>).map((e) => e as String).toList(),
  gt31dLte91d: (json['gt_31d_lte_91d'] as List<dynamic>).map((e) => e as String).toList(),
  gt91dLte121d: (json['gt_91d_lte_121d'] as List<dynamic>).map((e) => e as String).toList(),
  gt121d: (json['gt_121d'] as List<dynamic>).map((e) => e as String).toList(),
  lte3d: (json['lte_3d'] as List<dynamic>).map((e) => e as String).toList(),
); }

final List<String> gt3dLte16d;

final List<String> gt16dLte31d;

final List<String> gt31dLte91d;

final List<String> gt91dLte121d;

final List<String> gt121d;

final List<String> lte3d;

Map<String, dynamic> toJson() { return {
  'gt_3d_lte_16d': gt3dLte16d,
  'gt_16d_lte_31d': gt16dLte31d,
  'gt_31d_lte_91d': gt31dLte91d,
  'gt_91d_lte_121d': gt91dLte121d,
  'gt_121d': gt121d,
  'lte_3d': lte3d,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('gt_3d_lte_16d') &&
      json.containsKey('gt_16d_lte_31d') &&
      json.containsKey('gt_31d_lte_91d') &&
      json.containsKey('gt_91d_lte_121d') &&
      json.containsKey('gt_121d') &&
      json.containsKey('lte_3d'); } 
RadarGetCtTimeseriesGroupResponseResultSerie0Variant3 copyWith({List<String>? gt3dLte16d, List<String>? gt16dLte31d, List<String>? gt31dLte91d, List<String>? gt91dLte121d, List<String>? gt121d, List<String>? lte3d, }) { return RadarGetCtTimeseriesGroupResponseResultSerie0Variant3(
  gt3dLte16d: gt3dLte16d ?? this.gt3dLte16d,
  gt16dLte31d: gt16dLte31d ?? this.gt16dLte31d,
  gt31dLte91d: gt31dLte91d ?? this.gt31dLte91d,
  gt91dLte121d: gt91dLte121d ?? this.gt91dLte121d,
  gt121d: gt121d ?? this.gt121d,
  lte3d: lte3d ?? this.lte3d,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetCtTimeseriesGroupResponseResultSerie0Variant3 &&
          listEquals(gt3dLte16d, other.gt3dLte16d) &&
          listEquals(gt16dLte31d, other.gt16dLte31d) &&
          listEquals(gt31dLte91d, other.gt31dLte91d) &&
          listEquals(gt91dLte121d, other.gt91dLte121d) &&
          listEquals(gt121d, other.gt121d) &&
          listEquals(lte3d, other.lte3d); } 
@override int get hashCode { return Object.hash(Object.hashAll(gt3dLte16d), Object.hashAll(gt16dLte31d), Object.hashAll(gt31dLte91d), Object.hashAll(gt91dLte121d), Object.hashAll(gt121d), Object.hashAll(lte3d)); } 
@override String toString() { return 'RadarGetCtTimeseriesGroupResponseResultSerie0Variant3(gt3dLte16d: $gt3dLte16d, gt16dLte31d: $gt16dLte31d, gt31dLte91d: $gt31dLte91d, gt91dLte121d: $gt91dLte121d, gt121d: $gt121d, lte3d: $lte3d)'; } 
 }
