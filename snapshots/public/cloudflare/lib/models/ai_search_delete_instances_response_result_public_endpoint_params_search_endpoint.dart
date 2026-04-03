// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchDeleteInstancesResponseResultPublicEndpointParamsSearchEndpoint {const AiSearchDeleteInstancesResponseResultPublicEndpointParamsSearchEndpoint({this.disabled = false});

factory AiSearchDeleteInstancesResponseResultPublicEndpointParamsSearchEndpoint.fromJson(Map<String, dynamic> json) { return AiSearchDeleteInstancesResponseResultPublicEndpointParamsSearchEndpoint(
  disabled: json.containsKey('disabled') ? json['disabled'] as bool : false,
); }

/// Disable search endpoint for this public endpoint
final bool disabled;

Map<String, dynamic> toJson() { return {
  'disabled': disabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'disabled'}.contains(key)); } 
AiSearchDeleteInstancesResponseResultPublicEndpointParamsSearchEndpoint copyWith({bool Function()? disabled}) { return AiSearchDeleteInstancesResponseResultPublicEndpointParamsSearchEndpoint(
  disabled: disabled != null ? disabled() : this.disabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchDeleteInstancesResponseResultPublicEndpointParamsSearchEndpoint &&
          disabled == other.disabled; } 
@override int get hashCode { return disabled.hashCode; } 
@override String toString() { return 'AiSearchDeleteInstancesResponseResultPublicEndpointParamsSearchEndpoint(disabled: $disabled)'; } 
 }
