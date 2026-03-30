// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mcn_resource_details.dart';import 'mcn_result_info.dart';final class McnReadAccountResourcesResponse {const McnReadAccountResourcesResponse({this.result, this.resultInfo, });

factory McnReadAccountResourcesResponse.fromJson(Map<String, dynamic> json) { return McnReadAccountResourcesResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => McnResourceDetails.fromJson(e as Map<String, dynamic>)).toList(),
  resultInfo: json['result_info'] != null ? McnResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<McnResourceDetails>? result;

final McnResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result', 'result_info'}.contains(key)); } 
McnReadAccountResourcesResponse copyWith({List<McnResourceDetails> Function()? result, McnResultInfo Function()? resultInfo, }) { return McnReadAccountResourcesResponse(
  result: result != null ? result() : this.result,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnReadAccountResourcesResponse &&
          listEquals(result, other.result) &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(result ?? const []), resultInfo); } 
@override String toString() { return 'McnReadAccountResourcesResponse(result: $result, resultInfo: $resultInfo)'; } 
 }
