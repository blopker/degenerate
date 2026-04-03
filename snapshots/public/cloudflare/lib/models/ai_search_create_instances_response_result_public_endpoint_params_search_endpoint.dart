// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchCreateInstancesResponseResultPublicEndpointParamsSearchEndpoint {const AiSearchCreateInstancesResponseResultPublicEndpointParamsSearchEndpoint({this.disabled = false});

factory AiSearchCreateInstancesResponseResultPublicEndpointParamsSearchEndpoint.fromJson(Map<String, dynamic> json) { return AiSearchCreateInstancesResponseResultPublicEndpointParamsSearchEndpoint(
  disabled: json.containsKey('disabled') ? json['disabled'] as bool : false,
); }

/// Disable search endpoint for this public endpoint
final bool disabled;

Map<String, dynamic> toJson() { return {
  'disabled': disabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'disabled'}.contains(key)); } 
AiSearchCreateInstancesResponseResultPublicEndpointParamsSearchEndpoint copyWith({bool Function()? disabled}) { return AiSearchCreateInstancesResponseResultPublicEndpointParamsSearchEndpoint(
  disabled: disabled != null ? disabled() : this.disabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchCreateInstancesResponseResultPublicEndpointParamsSearchEndpoint &&
          disabled == other.disabled; } 
@override int get hashCode { return disabled.hashCode; } 
@override String toString() { return 'AiSearchCreateInstancesResponseResultPublicEndpointParamsSearchEndpoint(disabled: $disabled)'; } 
 }
