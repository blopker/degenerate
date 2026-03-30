// GENERATED CODE - DO NOT MODIFY BY HAND

import 'livestream_session_details_response_data.dart';final class LivestreamSessionDetailsResponse {const LivestreamSessionDetailsResponse({this.data, this.success, });

factory LivestreamSessionDetailsResponse.fromJson(Map<String, dynamic> json) { return LivestreamSessionDetailsResponse(
  data: json['data'] != null ? LivestreamSessionDetailsResponseData.fromJson(json['data'] as Map<String, dynamic>) : null,
  success: json['success'] as bool?,
); }

final LivestreamSessionDetailsResponseData? data;

final bool? success;

Map<String, dynamic> toJson() { return {
  if (data != null) 'data': data?.toJson(),
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'data', 'success'}.contains(key)); } 
LivestreamSessionDetailsResponse copyWith({LivestreamSessionDetailsResponseData Function()? data, bool Function()? success, }) { return LivestreamSessionDetailsResponse(
  data: data != null ? data() : this.data,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LivestreamSessionDetailsResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'LivestreamSessionDetailsResponse(data: $data, success: $success)'; } 
 }
