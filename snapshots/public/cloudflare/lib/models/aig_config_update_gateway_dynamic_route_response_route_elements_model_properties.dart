// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigUpdateGatewayDynamicRouteResponseRouteElementsModelProperties {const AigConfigUpdateGatewayDynamicRouteResponseRouteElementsModelProperties({required this.model, required this.provider, required this.retries, required this.timeout, });

factory AigConfigUpdateGatewayDynamicRouteResponseRouteElementsModelProperties.fromJson(Map<String, dynamic> json) { return AigConfigUpdateGatewayDynamicRouteResponseRouteElementsModelProperties(
  model: json['model'] as String,
  provider: json['provider'] as String,
  retries: (json['retries'] as num).toDouble(),
  timeout: (json['timeout'] as num).toDouble(),
); }

final String model;

final String provider;

final double retries;

final double timeout;

Map<String, dynamic> toJson() { return {
  'model': model,
  'provider': provider,
  'retries': retries,
  'timeout': timeout,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('model') && json['model'] is String &&
      json.containsKey('provider') && json['provider'] is String &&
      json.containsKey('retries') && json['retries'] is num &&
      json.containsKey('timeout') && json['timeout'] is num; } 
AigConfigUpdateGatewayDynamicRouteResponseRouteElementsModelProperties copyWith({String? model, String? provider, double? retries, double? timeout, }) { return AigConfigUpdateGatewayDynamicRouteResponseRouteElementsModelProperties(
  model: model ?? this.model,
  provider: provider ?? this.provider,
  retries: retries ?? this.retries,
  timeout: timeout ?? this.timeout,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigUpdateGatewayDynamicRouteResponseRouteElementsModelProperties &&
          model == other.model &&
          provider == other.provider &&
          retries == other.retries &&
          timeout == other.timeout; } 
@override int get hashCode { return Object.hash(model, provider, retries, timeout); } 
@override String toString() { return 'AigConfigUpdateGatewayDynamicRouteResponseRouteElementsModelProperties(model: $model, provider: $provider, retries: $retries, timeout: $timeout)'; } 
 }
