// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mcn_resource_details.dart';final class McnReadAccountResourceResponse {const McnReadAccountResourceResponse({this.result});

factory McnReadAccountResourceResponse.fromJson(Map<String, dynamic> json) { return McnReadAccountResourceResponse(
  result: json['result'] != null ? McnResourceDetails.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final McnResourceDetails? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
McnReadAccountResourceResponse copyWith({McnResourceDetails Function()? result}) { return McnReadAccountResourceResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnReadAccountResourceResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'McnReadAccountResourceResponse(result: $result)'; } 
 }
