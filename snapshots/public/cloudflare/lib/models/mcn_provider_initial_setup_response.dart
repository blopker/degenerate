// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mcn_provider_initial_setup_response_result.dart';final class McnProviderInitialSetupResponse {const McnProviderInitialSetupResponse({this.result});

factory McnProviderInitialSetupResponse.fromJson(Map<String, dynamic> json) { return McnProviderInitialSetupResponse(
  result: json['result'] != null ? McnProviderInitialSetupResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final McnProviderInitialSetupResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
McnProviderInitialSetupResponse copyWith({McnProviderInitialSetupResponseResult Function()? result}) { return McnProviderInitialSetupResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnProviderInitialSetupResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'McnProviderInitialSetupResponse(result: $result)'; } 
 }
