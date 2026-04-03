// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'kick_all_participants_response_data.dart';@immutable final class KickAllParticipantsResponse {const KickAllParticipantsResponse({this.data, this.success, });

factory KickAllParticipantsResponse.fromJson(Map<String, dynamic> json) { return KickAllParticipantsResponse(
  data: json['data'] != null ? KickAllParticipantsResponseData.fromJson(json['data'] as Map<String, dynamic>) : null,
  success: json['success'] as bool?,
); }

final KickAllParticipantsResponseData? data;

final bool? success;

Map<String, dynamic> toJson() { return {
  if (data != null) 'data': data?.toJson(),
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'data', 'success'}.contains(key)); } 
KickAllParticipantsResponse copyWith({KickAllParticipantsResponseData Function()? data, bool Function()? success, }) { return KickAllParticipantsResponse(
  data: data != null ? data() : this.data,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is KickAllParticipantsResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'KickAllParticipantsResponse(data: $data, success: $success)'; } 
 }
