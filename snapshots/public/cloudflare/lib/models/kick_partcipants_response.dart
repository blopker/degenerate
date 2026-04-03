// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'kick_partcipants_response_data.dart';@immutable final class KickPartcipantsResponse {const KickPartcipantsResponse({this.data, this.success, });

factory KickPartcipantsResponse.fromJson(Map<String, dynamic> json) { return KickPartcipantsResponse(
  data: json['data'] != null ? KickPartcipantsResponseData.fromJson(json['data'] as Map<String, dynamic>) : null,
  success: json['success'] as bool?,
); }

final KickPartcipantsResponseData? data;

final bool? success;

Map<String, dynamic> toJson() { return {
  if (data != null) 'data': data?.toJson(),
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'data', 'success'}.contains(key)); } 
KickPartcipantsResponse copyWith({KickPartcipantsResponseData Function()? data, bool Function()? success, }) { return KickPartcipantsResponse(
  data: data != null ? data() : this.data,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is KickPartcipantsResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'KickPartcipantsResponse(data: $data, success: $success)'; } 
 }
