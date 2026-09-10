// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchUpdateInstancesRequestPublicEndpointParamsSearchEndpoint {const AiSearchUpdateInstancesRequestPublicEndpointParamsSearchEndpoint({this.disabled});

factory AiSearchUpdateInstancesRequestPublicEndpointParamsSearchEndpoint.fromJson(Map<String, dynamic> json) { return AiSearchUpdateInstancesRequestPublicEndpointParamsSearchEndpoint(
  disabled: json['disabled'] as bool?,
); }

/// Disable search endpoint for this public endpoint
final bool? disabled;

/// The value with the schema default applied when absent.
bool get disabledOrDefault { return disabled ?? false; } 
Map<String, dynamic> toJson() { return {
  'disabled': ?disabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'disabled'}.contains(key)); } 
AiSearchUpdateInstancesRequestPublicEndpointParamsSearchEndpoint copyWith({bool? Function()? disabled}) { return AiSearchUpdateInstancesRequestPublicEndpointParamsSearchEndpoint(
  disabled: disabled != null ? disabled() : this.disabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchUpdateInstancesRequestPublicEndpointParamsSearchEndpoint &&
          disabled == other.disabled; } 
@override int get hashCode { return disabled.hashCode; } 
@override String toString() { return 'AiSearchUpdateInstancesRequestPublicEndpointParamsSearchEndpoint(disabled: $disabled)'; } 
 }
