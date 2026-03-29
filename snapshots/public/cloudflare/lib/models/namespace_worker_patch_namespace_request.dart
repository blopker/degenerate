// GENERATED CODE - DO NOT MODIFY BY HAND

import 'workers_trusted_workers.dart';final class NamespaceWorkerPatchNamespaceRequest {const NamespaceWorkerPatchNamespaceRequest({this.name, this.trustedWorkers, });

factory NamespaceWorkerPatchNamespaceRequest.fromJson(Map<String, dynamic> json) { return NamespaceWorkerPatchNamespaceRequest(
  name: json['name'] as String?,
  trustedWorkers: json['trusted_workers'] != null ? WorkersTrustedWorkers.fromJson(json['trusted_workers'] as bool) : null,
); }

/// The name of the dispatch namespace.
final String? name;

/// Whether the Workers in the namespace are executed in a "trusted" manner. When a Worker is trusted, it has access to the shared caches for the zone in the Cache API, and has access to the `request.cf` object on incoming Requests. When a Worker is untrusted, caches are not shared across the zone, and `request.cf` is undefined. By default, Workers in a namespace are "untrusted".
final WorkersTrustedWorkers? trustedWorkers;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  if (trustedWorkers != null) 'trusted_workers': trustedWorkers?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
NamespaceWorkerPatchNamespaceRequest copyWith({String Function()? name, WorkersTrustedWorkers Function()? trustedWorkers, }) { return NamespaceWorkerPatchNamespaceRequest(
  name: name != null ? name() : this.name,
  trustedWorkers: trustedWorkers != null ? trustedWorkers() : this.trustedWorkers,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NamespaceWorkerPatchNamespaceRequest &&
          name == other.name &&
          trustedWorkers == other.trustedWorkers; } 
@override int get hashCode { return Object.hash(name, trustedWorkers); } 
@override String toString() { return 'NamespaceWorkerPatchNamespaceRequest(name: $name, trustedWorkers: $trustedWorkers)'; } 
 }
