// GENERATED CODE - DO NOT MODIFY BY HAND

import 'infra_service_config.dart';final class ConnectivityServicesGetResponse {const ConnectivityServicesGetResponse({this.result});

factory ConnectivityServicesGetResponse.fromJson(Map<String, dynamic> json) { return ConnectivityServicesGetResponse(
  result: json['result'] != null ? InfraServiceConfig.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final InfraServiceConfig? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ConnectivityServicesGetResponse copyWith({InfraServiceConfig Function()? result}) { return ConnectivityServicesGetResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConnectivityServicesGetResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ConnectivityServicesGetResponse(result: $result)'; } 
 }
