// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'infra_service_config.dart';@immutable final class ConnectivityServicesListResponse {const ConnectivityServicesListResponse({this.result});

factory ConnectivityServicesListResponse.fromJson(Map<String, dynamic> json) { return ConnectivityServicesListResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => InfraServiceConfig.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<InfraServiceConfig>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ConnectivityServicesListResponse copyWith({List<InfraServiceConfig> Function()? result}) { return ConnectivityServicesListResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConnectivityServicesListResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'ConnectivityServicesListResponse(result: $result)'; } 
 }
