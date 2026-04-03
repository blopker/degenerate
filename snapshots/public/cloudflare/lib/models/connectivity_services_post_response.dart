// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'infra_service_config.dart';@immutable final class ConnectivityServicesPostResponse {const ConnectivityServicesPostResponse({this.result});

factory ConnectivityServicesPostResponse.fromJson(Map<String, dynamic> json) { return ConnectivityServicesPostResponse(
  result: json['result'] != null ? InfraServiceConfig.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final InfraServiceConfig? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ConnectivityServicesPostResponse copyWith({InfraServiceConfig Function()? result}) { return ConnectivityServicesPostResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConnectivityServicesPostResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ConnectivityServicesPostResponse(result: $result)'; } 
 }
