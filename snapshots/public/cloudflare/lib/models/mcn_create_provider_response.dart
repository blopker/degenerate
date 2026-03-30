// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mcn_provider.dart';final class McnCreateProviderResponse {const McnCreateProviderResponse({this.result});

factory McnCreateProviderResponse.fromJson(Map<String, dynamic> json) { return McnCreateProviderResponse(
  result: json['result'] != null ? McnProvider.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final McnProvider? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
McnCreateProviderResponse copyWith({McnProvider Function()? result}) { return McnCreateProviderResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnCreateProviderResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'McnCreateProviderResponse(result: $result)'; } 
 }
