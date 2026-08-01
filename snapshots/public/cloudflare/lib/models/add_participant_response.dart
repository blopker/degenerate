// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'add_participant_response_data.dart';@immutable final class AddParticipantResponse {const AddParticipantResponse({this.data, this.success = true, });

factory AddParticipantResponse.fromJson(Map<String, dynamic> json) { return AddParticipantResponse(
  data: json['data'] != null ? AddParticipantResponseData.fromJson(json['data'] as Map<String, dynamic>) : null,
  success: json['success'] as bool,
); }

final AddParticipantResponseData? data;

/// Success status of the operation
final bool success;

Map<String, dynamic> toJson() { return {
  if (data != null) 'data': data?.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('success') && json['success'] is bool; } 
AddParticipantResponse copyWith({AddParticipantResponseData? Function()? data, bool? success, }) { return AddParticipantResponse(
  data: data != null ? data() : this.data,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AddParticipantResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'AddParticipantResponse(data: $data, success: $success)'; } 
 }
