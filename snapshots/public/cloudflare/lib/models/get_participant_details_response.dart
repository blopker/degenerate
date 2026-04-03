// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_participant_details_response_data.dart';@immutable final class GetParticipantDetailsResponse {const GetParticipantDetailsResponse({this.data, this.success, });

factory GetParticipantDetailsResponse.fromJson(Map<String, dynamic> json) { return GetParticipantDetailsResponse(
  data: json['data'] != null ? GetParticipantDetailsResponseData.fromJson(json['data'] as Map<String, dynamic>) : null,
  success: json['success'] as bool?,
); }

final GetParticipantDetailsResponseData? data;

final bool? success;

Map<String, dynamic> toJson() { return {
  if (data != null) 'data': data?.toJson(),
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'data', 'success'}.contains(key)); } 
GetParticipantDetailsResponse copyWith({GetParticipantDetailsResponseData Function()? data, bool Function()? success, }) { return GetParticipantDetailsResponse(
  data: data != null ? data() : this.data,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDetailsResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'GetParticipantDetailsResponse(data: $data, success: $success)'; } 
 }
