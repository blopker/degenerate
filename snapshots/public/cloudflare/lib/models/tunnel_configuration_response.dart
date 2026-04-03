// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tunnel_configuration.dart';@immutable final class TunnelConfigurationResponse {const TunnelConfigurationResponse({this.result});

factory TunnelConfigurationResponse.fromJson(Map<String, dynamic> json) { return TunnelConfigurationResponse(
  result: json['result'] != null ? TunnelConfiguration.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TunnelConfiguration? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TunnelConfigurationResponse copyWith({TunnelConfiguration Function()? result}) { return TunnelConfigurationResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TunnelConfigurationResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TunnelConfigurationResponse(result: $result)'; } 
 }
