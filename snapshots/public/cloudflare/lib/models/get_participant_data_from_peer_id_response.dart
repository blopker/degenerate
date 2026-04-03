// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_participant_data_from_peer_id_response_data.dart';@immutable final class GetParticipantDataFromPeerIdResponse {const GetParticipantDataFromPeerIdResponse({this.data, this.success, });

factory GetParticipantDataFromPeerIdResponse.fromJson(Map<String, dynamic> json) { return GetParticipantDataFromPeerIdResponse(
  data: json['data'] != null ? GetParticipantDataFromPeerIdResponseData.fromJson(json['data'] as Map<String, dynamic>) : null,
  success: json['success'] as bool?,
); }

final GetParticipantDataFromPeerIdResponseData? data;

final bool? success;

Map<String, dynamic> toJson() { return {
  if (data != null) 'data': data?.toJson(),
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'data', 'success'}.contains(key)); } 
GetParticipantDataFromPeerIdResponse copyWith({GetParticipantDataFromPeerIdResponseData Function()? data, bool Function()? success, }) { return GetParticipantDataFromPeerIdResponse(
  data: data != null ? data() : this.data,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDataFromPeerIdResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'GetParticipantDataFromPeerIdResponse(data: $data, success: $success)'; } 
 }
