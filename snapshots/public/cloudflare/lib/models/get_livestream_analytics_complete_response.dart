// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_livestream_analytics_complete_response_data.dart';@immutable final class GetLivestreamAnalyticsCompleteResponse {const GetLivestreamAnalyticsCompleteResponse({this.data, this.success, });

factory GetLivestreamAnalyticsCompleteResponse.fromJson(Map<String, dynamic> json) { return GetLivestreamAnalyticsCompleteResponse(
  data: json['data'] != null ? GetLivestreamAnalyticsCompleteResponseData.fromJson(json['data'] as Map<String, dynamic>) : null,
  success: json['success'] as bool?,
); }

final GetLivestreamAnalyticsCompleteResponseData? data;

final bool? success;

Map<String, dynamic> toJson() { return {
  if (data != null) 'data': data?.toJson(),
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'data', 'success'}.contains(key)); } 
GetLivestreamAnalyticsCompleteResponse copyWith({GetLivestreamAnalyticsCompleteResponseData Function()? data, bool Function()? success, }) { return GetLivestreamAnalyticsCompleteResponse(
  data: data != null ? data() : this.data,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetLivestreamAnalyticsCompleteResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'GetLivestreamAnalyticsCompleteResponse(data: $data, success: $success)'; } 
 }
