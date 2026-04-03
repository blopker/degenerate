// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchUpdateInstancesResponseResultPublicEndpointParamsSearchEndpoint {const AiSearchUpdateInstancesResponseResultPublicEndpointParamsSearchEndpoint({this.disabled = false});

factory AiSearchUpdateInstancesResponseResultPublicEndpointParamsSearchEndpoint.fromJson(Map<String, dynamic> json) { return AiSearchUpdateInstancesResponseResultPublicEndpointParamsSearchEndpoint(
  disabled: json.containsKey('disabled') ? json['disabled'] as bool : false,
); }

/// Disable search endpoint for this public endpoint
final bool disabled;

Map<String, dynamic> toJson() { return {
  'disabled': disabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'disabled'}.contains(key)); } 
AiSearchUpdateInstancesResponseResultPublicEndpointParamsSearchEndpoint copyWith({bool Function()? disabled}) { return AiSearchUpdateInstancesResponseResultPublicEndpointParamsSearchEndpoint(
  disabled: disabled != null ? disabled() : this.disabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchUpdateInstancesResponseResultPublicEndpointParamsSearchEndpoint &&
          disabled == other.disabled; } 
@override int get hashCode { return disabled.hashCode; } 
@override String toString() { return 'AiSearchUpdateInstancesResponseResultPublicEndpointParamsSearchEndpoint(disabled: $disabled)'; } 
 }
