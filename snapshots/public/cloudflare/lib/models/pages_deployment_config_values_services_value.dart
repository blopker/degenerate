// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Service binding.
@immutable final class PagesDeploymentConfigValuesServicesValue {const PagesDeploymentConfigValuesServicesValue({required this.environment, required this.service, this.entrypoint, });

factory PagesDeploymentConfigValuesServicesValue.fromJson(Map<String, dynamic> json) { return PagesDeploymentConfigValuesServicesValue(
  entrypoint: json['entrypoint'] as String?,
  environment: json['environment'] as String,
  service: json['service'] as String,
); }

/// The entrypoint to bind to.
final String? entrypoint;

/// The Service environment.
final String environment;

/// The Service name.
final String service;

Map<String, dynamic> toJson() { return {
  'entrypoint': ?entrypoint,
  'environment': environment,
  'service': service,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('environment') && json['environment'] is String &&
      json.containsKey('service') && json['service'] is String; } 
PagesDeploymentConfigValuesServicesValue copyWith({String? Function()? entrypoint, String? environment, String? service, }) { return PagesDeploymentConfigValuesServicesValue(
  entrypoint: entrypoint != null ? entrypoint() : this.entrypoint,
  environment: environment ?? this.environment,
  service: service ?? this.service,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesDeploymentConfigValuesServicesValue &&
          entrypoint == other.entrypoint &&
          environment == other.environment &&
          service == other.service; } 
@override int get hashCode { return Object.hash(entrypoint, environment, service); } 
@override String toString() { return 'PagesDeploymentConfigValuesServicesValue(entrypoint: $entrypoint, environment: $environment, service: $service)'; } 
 }
