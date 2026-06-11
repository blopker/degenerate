// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_presets_preset_id_response_data.dart';@immutable final class GetPresetsPresetIdResponse {const GetPresetsPresetIdResponse({required this.data, this.success = true, });

factory GetPresetsPresetIdResponse.fromJson(Map<String, dynamic> json) { return GetPresetsPresetIdResponse(
  data: GetPresetsPresetIdResponseData.fromJson(json['data'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final GetPresetsPresetIdResponseData data;

/// Success status of the operation
final bool success;

Map<String, dynamic> toJson() { return {
  'data': data.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data') &&
      json.containsKey('success') && json['success'] is bool; } 
GetPresetsPresetIdResponse copyWith({GetPresetsPresetIdResponseData? data, bool? success, }) { return GetPresetsPresetIdResponse(
  data: data ?? this.data,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetPresetsPresetIdResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'GetPresetsPresetIdResponse(data: $data, success: $success)'; } 
 }
