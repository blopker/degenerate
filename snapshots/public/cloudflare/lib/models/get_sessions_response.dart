// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_sessions_response_data.dart';@immutable final class GetSessionsResponse {const GetSessionsResponse({this.data, this.success, });

factory GetSessionsResponse.fromJson(Map<String, dynamic> json) { return GetSessionsResponse(
  data: json['data'] != null ? GetSessionsResponseData.fromJson(json['data'] as Map<String, dynamic>) : null,
  success: json['success'] as bool?,
); }

final GetSessionsResponseData? data;

final bool? success;

Map<String, dynamic> toJson() { return {
  if (data != null) 'data': data?.toJson(),
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'data', 'success'}.contains(key)); } 
GetSessionsResponse copyWith({GetSessionsResponseData Function()? data, bool Function()? success, }) { return GetSessionsResponse(
  data: data != null ? data() : this.data,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetSessionsResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'GetSessionsResponse(data: $data, success: $success)'; } 
 }
