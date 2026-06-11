// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_meeting_participant_response_data.dart';@immutable final class DeleteMeetingParticipantResponse {const DeleteMeetingParticipantResponse({this.data, this.success = true, });

factory DeleteMeetingParticipantResponse.fromJson(Map<String, dynamic> json) { return DeleteMeetingParticipantResponse(
  data: json['data'] != null ? DeleteMeetingParticipantResponseData.fromJson(json['data'] as Map<String, dynamic>) : null,
  success: json['success'] as bool,
); }

final DeleteMeetingParticipantResponseData? data;

/// Success status of the operation
final bool success;

Map<String, dynamic> toJson() { return {
  if (data != null) 'data': data?.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('success') && json['success'] is bool; } 
DeleteMeetingParticipantResponse copyWith({DeleteMeetingParticipantResponseData Function()? data, bool? success, }) { return DeleteMeetingParticipantResponse(
  data: data != null ? data() : this.data,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteMeetingParticipantResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'DeleteMeetingParticipantResponse(data: $data, success: $success)'; } 
 }
