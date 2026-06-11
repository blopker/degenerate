// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_one_recording_response_data.dart';@immutable final class GetOneRecordingResponse {const GetOneRecordingResponse({this.data, this.success = true, });

factory GetOneRecordingResponse.fromJson(Map<String, dynamic> json) { return GetOneRecordingResponse(
  data: json['data'] != null ? GetOneRecordingResponseData.fromJson(json['data'] as Map<String, dynamic>) : null,
  success: json['success'] as bool,
); }

final GetOneRecordingResponseData? data;

/// Success status of the operation
final bool success;

Map<String, dynamic> toJson() { return {
  if (data != null) 'data': data?.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('success') && json['success'] is bool; } 
GetOneRecordingResponse copyWith({GetOneRecordingResponseData Function()? data, bool? success, }) { return GetOneRecordingResponse(
  data: data != null ? data() : this.data,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetOneRecordingResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'GetOneRecordingResponse(data: $data, success: $success)'; } 
 }
