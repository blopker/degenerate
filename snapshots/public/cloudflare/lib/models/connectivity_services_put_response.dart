// GENERATED CODE - DO NOT MODIFY BY HAND

import 'infra_service_config.dart';final class ConnectivityServicesPutResponse {const ConnectivityServicesPutResponse({this.result});

factory ConnectivityServicesPutResponse.fromJson(Map<String, dynamic> json) { return ConnectivityServicesPutResponse(
  result: json['result'] != null ? InfraServiceConfig.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final InfraServiceConfig? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ConnectivityServicesPutResponse copyWith({InfraServiceConfig Function()? result}) { return ConnectivityServicesPutResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConnectivityServicesPutResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ConnectivityServicesPutResponse(result: $result)'; } 
 }
