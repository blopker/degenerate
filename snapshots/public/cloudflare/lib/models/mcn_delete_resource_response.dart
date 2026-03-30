// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mcn_deleted_resource.dart';final class McnDeleteResourceResponse {const McnDeleteResourceResponse({this.result});

factory McnDeleteResourceResponse.fromJson(Map<String, dynamic> json) { return McnDeleteResourceResponse(
  result: json['result'] != null ? McnDeletedResource.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final McnDeletedResource? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
McnDeleteResourceResponse copyWith({McnDeletedResource Function()? result}) { return McnDeleteResourceResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnDeleteResourceResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'McnDeleteResourceResponse(result: $result)'; } 
 }
