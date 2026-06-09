// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_sessions_session_id_summary_response_data.dart';@immutable final class PostSessionsSessionIdSummaryResponse {const PostSessionsSessionIdSummaryResponse({this.data, this.success, });

factory PostSessionsSessionIdSummaryResponse.fromJson(Map<String, dynamic> json) { return PostSessionsSessionIdSummaryResponse(
  data: json['data'] != null ? PostSessionsSessionIdSummaryResponseData.fromJson(json['data'] as Map<String, dynamic>) : null,
  success: json['success'] as bool?,
); }

final PostSessionsSessionIdSummaryResponseData? data;

final bool? success;

Map<String, dynamic> toJson() { return {
  if (data != null) 'data': data?.toJson(),
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'data', 'success'}.contains(key)); } 
PostSessionsSessionIdSummaryResponse copyWith({PostSessionsSessionIdSummaryResponseData Function()? data, bool Function()? success, }) { return PostSessionsSessionIdSummaryResponse(
  data: data != null ? data() : this.data,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSessionsSessionIdSummaryResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'PostSessionsSessionIdSummaryResponse(data: $data, success: $success)'; } 
 }
