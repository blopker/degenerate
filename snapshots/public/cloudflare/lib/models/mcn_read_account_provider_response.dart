// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mcn_provider.dart';final class McnReadAccountProviderResponse {const McnReadAccountProviderResponse({this.result});

factory McnReadAccountProviderResponse.fromJson(Map<String, dynamic> json) { return McnReadAccountProviderResponse(
  result: json['result'] != null ? McnProvider.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final McnProvider? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
McnReadAccountProviderResponse copyWith({McnProvider Function()? result}) { return McnReadAccountProviderResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnReadAccountProviderResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'McnReadAccountProviderResponse(result: $result)'; } 
 }
