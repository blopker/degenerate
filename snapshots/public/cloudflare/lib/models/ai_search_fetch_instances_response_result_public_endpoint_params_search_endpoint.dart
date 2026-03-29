// GENERATED CODE - DO NOT MODIFY BY HAND

final class AiSearchFetchInstancesResponseResultPublicEndpointParamsSearchEndpoint {const AiSearchFetchInstancesResponseResultPublicEndpointParamsSearchEndpoint({this.disabled = false});

factory AiSearchFetchInstancesResponseResultPublicEndpointParamsSearchEndpoint.fromJson(Map<String, dynamic> json) { return AiSearchFetchInstancesResponseResultPublicEndpointParamsSearchEndpoint(
  disabled: json.containsKey('disabled') ? json['disabled'] as bool : false,
); }

/// Disable search endpoint for this public endpoint
final bool disabled;

Map<String, dynamic> toJson() { return {
  'disabled': disabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AiSearchFetchInstancesResponseResultPublicEndpointParamsSearchEndpoint copyWith({bool Function()? disabled}) { return AiSearchFetchInstancesResponseResultPublicEndpointParamsSearchEndpoint(
  disabled: disabled != null ? disabled() : this.disabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchFetchInstancesResponseResultPublicEndpointParamsSearchEndpoint &&
          disabled == other.disabled; } 
@override int get hashCode { return disabled.hashCode; } 
@override String toString() { return 'AiSearchFetchInstancesResponseResultPublicEndpointParamsSearchEndpoint(disabled: $disabled)'; } 
 }
