// GENERATED CODE - DO NOT MODIFY BY HAND

import 'get_session_participants_response_data.dart';final class GetSessionParticipantsResponse {const GetSessionParticipantsResponse({this.data, this.success, });

factory GetSessionParticipantsResponse.fromJson(Map<String, dynamic> json) { return GetSessionParticipantsResponse(
  data: json['data'] != null ? GetSessionParticipantsResponseData.fromJson(json['data'] as Map<String, dynamic>) : null,
  success: json['success'] as bool?,
); }

final GetSessionParticipantsResponseData? data;

final bool? success;

Map<String, dynamic> toJson() { return {
  if (data != null) 'data': data?.toJson(),
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'data', 'success'}.contains(key)); } 
GetSessionParticipantsResponse copyWith({GetSessionParticipantsResponseData Function()? data, bool Function()? success, }) { return GetSessionParticipantsResponse(
  data: data != null ? data() : this.data,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetSessionParticipantsResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'GetSessionParticipantsResponse(data: $data, success: $success)'; } 
 }
