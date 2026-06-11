// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'start_recording_response_data.dart';@immutable final class StartRecordingResponse {const StartRecordingResponse({this.data, this.success = true, });

factory StartRecordingResponse.fromJson(Map<String, dynamic> json) { return StartRecordingResponse(
  data: json['data'] != null ? StartRecordingResponseData.fromJson(json['data'] as Map<String, dynamic>) : null,
  success: json['success'] as bool,
); }

final StartRecordingResponseData? data;

/// Success status of the operation
final bool success;

Map<String, dynamic> toJson() { return {
  if (data != null) 'data': data?.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('success') && json['success'] is bool; } 
StartRecordingResponse copyWith({StartRecordingResponseData Function()? data, bool? success, }) { return StartRecordingResponse(
  data: data != null ? data() : this.data,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StartRecordingResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'StartRecordingResponse(data: $data, success: $success)'; } 
 }
