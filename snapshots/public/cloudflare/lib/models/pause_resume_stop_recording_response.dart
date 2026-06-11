// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pause_resume_stop_recording_response_data.dart';@immutable final class PauseResumeStopRecordingResponse {const PauseResumeStopRecordingResponse({this.data, this.success = true, });

factory PauseResumeStopRecordingResponse.fromJson(Map<String, dynamic> json) { return PauseResumeStopRecordingResponse(
  data: json['data'] != null ? PauseResumeStopRecordingResponseData.fromJson(json['data'] as Map<String, dynamic>) : null,
  success: json['success'] as bool,
); }

final PauseResumeStopRecordingResponseData? data;

/// Success status of the operation
final bool success;

Map<String, dynamic> toJson() { return {
  if (data != null) 'data': data?.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('success') && json['success'] is bool; } 
PauseResumeStopRecordingResponse copyWith({PauseResumeStopRecordingResponseData Function()? data, bool? success, }) { return PauseResumeStopRecordingResponse(
  data: data != null ? data() : this.data,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PauseResumeStopRecordingResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'PauseResumeStopRecordingResponse(data: $data, success: $success)'; } 
 }
