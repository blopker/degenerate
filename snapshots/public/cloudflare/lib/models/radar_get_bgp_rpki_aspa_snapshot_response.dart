// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_bgp_rpki_aspa_snapshot_response_result.dart';@immutable final class RadarGetBgpRpkiAspaSnapshotResponse {const RadarGetBgpRpkiAspaSnapshotResponse({required this.result, required this.success, });

factory RadarGetBgpRpkiAspaSnapshotResponse.fromJson(Map<String, dynamic> json) { return RadarGetBgpRpkiAspaSnapshotResponse(
  result: RadarGetBgpRpkiAspaSnapshotResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetBgpRpkiAspaSnapshotResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetBgpRpkiAspaSnapshotResponse copyWith({RadarGetBgpRpkiAspaSnapshotResponseResult? result, bool? success, }) { return RadarGetBgpRpkiAspaSnapshotResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBgpRpkiAspaSnapshotResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetBgpRpkiAspaSnapshotResponse(result: $result, success: $success)'; } 
 }
