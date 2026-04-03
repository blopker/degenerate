// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'livestreams_livestream_session_id_response_data.dart';@immutable final class LivestreamsLivestreamSessionIdResponse {const LivestreamsLivestreamSessionIdResponse({this.data, this.success, });

factory LivestreamsLivestreamSessionIdResponse.fromJson(Map<String, dynamic> json) { return LivestreamsLivestreamSessionIdResponse(
  data: json['data'] != null ? LivestreamsLivestreamSessionIdResponseData.fromJson(json['data'] as Map<String, dynamic>) : null,
  success: json['success'] as bool?,
); }

final LivestreamsLivestreamSessionIdResponseData? data;

final bool? success;

Map<String, dynamic> toJson() { return {
  if (data != null) 'data': data?.toJson(),
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'data', 'success'}.contains(key)); } 
LivestreamsLivestreamSessionIdResponse copyWith({LivestreamsLivestreamSessionIdResponseData Function()? data, bool Function()? success, }) { return LivestreamsLivestreamSessionIdResponse(
  data: data != null ? data() : this.data,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LivestreamsLivestreamSessionIdResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'LivestreamsLivestreamSessionIdResponse(data: $data, success: $success)'; } 
 }
