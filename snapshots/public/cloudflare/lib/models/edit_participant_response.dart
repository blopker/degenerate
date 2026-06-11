// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'edit_participant_response_data.dart';@immutable final class EditParticipantResponse {const EditParticipantResponse({this.data, this.success = true, });

factory EditParticipantResponse.fromJson(Map<String, dynamic> json) { return EditParticipantResponse(
  data: json['data'] != null ? EditParticipantResponseData.fromJson(json['data'] as Map<String, dynamic>) : null,
  success: json['success'] as bool,
); }

final EditParticipantResponseData? data;

/// Success status of the operation
final bool success;

Map<String, dynamic> toJson() { return {
  if (data != null) 'data': data?.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('success') && json['success'] is bool; } 
EditParticipantResponse copyWith({EditParticipantResponseData Function()? data, bool? success, }) { return EditParticipantResponse(
  data: data != null ? data() : this.data,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EditParticipantResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'EditParticipantResponse(data: $data, success: $success)'; } 
 }
