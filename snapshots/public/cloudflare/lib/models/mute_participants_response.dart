// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mute_participants_response_data.dart';@immutable final class MuteParticipantsResponse {const MuteParticipantsResponse({this.data, this.success, });

factory MuteParticipantsResponse.fromJson(Map<String, dynamic> json) { return MuteParticipantsResponse(
  data: json['data'] != null ? MuteParticipantsResponseData.fromJson(json['data'] as Map<String, dynamic>) : null,
  success: json['success'] as bool?,
); }

final MuteParticipantsResponseData? data;

final bool? success;

Map<String, dynamic> toJson() { return {
  if (data != null) 'data': data?.toJson(),
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'data', 'success'}.contains(key)); } 
MuteParticipantsResponse copyWith({MuteParticipantsResponseData Function()? data, bool Function()? success, }) { return MuteParticipantsResponse(
  data: data != null ? data() : this.data,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MuteParticipantsResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'MuteParticipantsResponse(data: $data, success: $success)'; } 
 }
