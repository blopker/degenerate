// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mcn_deleted_provider.dart';final class McnDeleteProviderResponse {const McnDeleteProviderResponse({this.result});

factory McnDeleteProviderResponse.fromJson(Map<String, dynamic> json) { return McnDeleteProviderResponse(
  result: json['result'] != null ? McnDeletedProvider.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final McnDeletedProvider? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
McnDeleteProviderResponse copyWith({McnDeletedProvider Function()? result}) { return McnDeleteProviderResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnDeleteProviderResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'McnDeleteProviderResponse(result: $result)'; } 
 }
