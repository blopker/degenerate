// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_binding_kind_dispatch_namespace_outbound_params.dart';import 'workers_binding_kind_dispatch_namespace_outbound_worker.dart';/// Outbound worker.
final class WorkersBindingKindDispatchNamespaceOutbound {const WorkersBindingKindDispatchNamespaceOutbound({this.params, this.worker, });

factory WorkersBindingKindDispatchNamespaceOutbound.fromJson(Map<String, dynamic> json) { return WorkersBindingKindDispatchNamespaceOutbound(
  params: (json['params'] as List<dynamic>?)?.map((e) => WorkersBindingKindDispatchNamespaceOutboundParams.fromJson(e as Map<String, dynamic>)).toList(),
  worker: json['worker'] != null ? WorkersBindingKindDispatchNamespaceOutboundWorker.fromJson(json['worker'] as Map<String, dynamic>) : null,
); }

/// Pass information from the Dispatch Worker to the Outbound Worker through the parameters.
final List<WorkersBindingKindDispatchNamespaceOutboundParams>? params;

/// Outbound worker.
final WorkersBindingKindDispatchNamespaceOutboundWorker? worker;

Map<String, dynamic> toJson() { return {
  if (params != null) 'params': params?.map((e) => e.toJson()).toList(),
  if (worker != null) 'worker': worker?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'params', 'worker'}.contains(key)); } 
WorkersBindingKindDispatchNamespaceOutbound copyWith({List<WorkersBindingKindDispatchNamespaceOutboundParams> Function()? params, WorkersBindingKindDispatchNamespaceOutboundWorker Function()? worker, }) { return WorkersBindingKindDispatchNamespaceOutbound(
  params: params != null ? params() : this.params,
  worker: worker != null ? worker() : this.worker,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersBindingKindDispatchNamespaceOutbound &&
          listEquals(params, other.params) &&
          worker == other.worker; } 
@override int get hashCode { return Object.hash(Object.hashAll(params ?? const []), worker); } 
@override String toString() { return 'WorkersBindingKindDispatchNamespaceOutbound(params: $params, worker: $worker)'; } 
 }
