// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_recording.dart';@immutable final class GetActiveRecordingResponse {const GetActiveRecordingResponse({required this.data, this.success = true, });

factory GetActiveRecordingResponse.fromJson(Map<String, dynamic> json) { return GetActiveRecordingResponse(
  data: RealtimekitRecording.fromJson(json['data'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RealtimekitRecording data;

/// Success status of the operation
final bool success;

Map<String, dynamic> toJson() { return {
  'data': data.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data') &&
      json.containsKey('success') && json['success'] is bool; } 
GetActiveRecordingResponse copyWith({RealtimekitRecording? data, bool? success, }) { return GetActiveRecordingResponse(
  data: data ?? this.data,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetActiveRecordingResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'GetActiveRecordingResponse(data: $data, success: $success)'; } 
 }
