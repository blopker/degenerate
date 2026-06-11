// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_presets_preset_id_response_data.dart';@immutable final class DeletePresetsPresetIdResponse {const DeletePresetsPresetIdResponse({required this.data, this.success = true, });

factory DeletePresetsPresetIdResponse.fromJson(Map<String, dynamic> json) { return DeletePresetsPresetIdResponse(
  data: DeletePresetsPresetIdResponseData.fromJson(json['data'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final DeletePresetsPresetIdResponseData data;

/// Success status of the operation
final bool success;

Map<String, dynamic> toJson() { return {
  'data': data.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data') &&
      json.containsKey('success') && json['success'] is bool; } 
DeletePresetsPresetIdResponse copyWith({DeletePresetsPresetIdResponseData? data, bool? success, }) { return DeletePresetsPresetIdResponse(
  data: data ?? this.data,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeletePresetsPresetIdResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'DeletePresetsPresetIdResponse(data: $data, success: $success)'; } 
 }
