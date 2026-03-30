// GENERATED CODE - DO NOT MODIFY BY HAND

/// Outbound worker.
final class WorkersBindingKindDispatchNamespaceOutboundWorker {const WorkersBindingKindDispatchNamespaceOutboundWorker({this.entrypoint, this.environment, this.service, });

factory WorkersBindingKindDispatchNamespaceOutboundWorker.fromJson(Map<String, dynamic> json) { return WorkersBindingKindDispatchNamespaceOutboundWorker(
  entrypoint: json['entrypoint'] as String?,
  environment: json['environment'] as String?,
  service: json['service'] as String?,
); }

/// Entrypoint to invoke on the outbound worker.
final String? entrypoint;

/// Environment of the outbound worker.
final String? environment;

/// Name of the outbound worker.
final String? service;

Map<String, dynamic> toJson() { return {
  'entrypoint': ?entrypoint,
  'environment': ?environment,
  'service': ?service,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'entrypoint', 'environment', 'service'}.contains(key)); } 
WorkersBindingKindDispatchNamespaceOutboundWorker copyWith({String Function()? entrypoint, String Function()? environment, String Function()? service, }) { return WorkersBindingKindDispatchNamespaceOutboundWorker(
  entrypoint: entrypoint != null ? entrypoint() : this.entrypoint,
  environment: environment != null ? environment() : this.environment,
  service: service != null ? service() : this.service,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersBindingKindDispatchNamespaceOutboundWorker &&
          entrypoint == other.entrypoint &&
          environment == other.environment &&
          service == other.service; } 
@override int get hashCode { return Object.hash(entrypoint, environment, service); } 
@override String toString() { return 'WorkersBindingKindDispatchNamespaceOutboundWorker(entrypoint: $entrypoint, environment: $environment, service: $service)'; } 
 }
