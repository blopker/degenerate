// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cloudforce_one_requests_priority.dart';import 'cloudforce_one_requests_request_status.dart';import 'cloudforce_one_requests_tlp.dart';final class CloudforceOneRequestsRequestConstants {const CloudforceOneRequestsRequestConstants({this.priority, this.status, this.tlp, });

factory CloudforceOneRequestsRequestConstants.fromJson(Map<String, dynamic> json) { return CloudforceOneRequestsRequestConstants(
  priority: (json['priority'] as List<dynamic>?)?.map((e) => CloudforceOneRequestsPriority.fromJson(e as String)).toList(),
  status: (json['status'] as List<dynamic>?)?.map((e) => CloudforceOneRequestsRequestStatus.fromJson(e as String)).toList(),
  tlp: (json['tlp'] as List<dynamic>?)?.map((e) => CloudforceOneRequestsTlp.fromJson(e as String)).toList(),
); }

final List<CloudforceOneRequestsPriority>? priority;

final List<CloudforceOneRequestsRequestStatus>? status;

final List<CloudforceOneRequestsTlp>? tlp;

Map<String, dynamic> toJson() { return {
  if (priority != null) 'priority': priority?.map((e) => e.toJson()).toList(),
  if (status != null) 'status': status?.map((e) => e.toJson()).toList(),
  if (tlp != null) 'tlp': tlp?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'priority', 'status', 'tlp'}.contains(key)); } 
CloudforceOneRequestsRequestConstants copyWith({List<CloudforceOneRequestsPriority> Function()? priority, List<CloudforceOneRequestsRequestStatus> Function()? status, List<CloudforceOneRequestsTlp> Function()? tlp, }) { return CloudforceOneRequestsRequestConstants(
  priority: priority != null ? priority() : this.priority,
  status: status != null ? status() : this.status,
  tlp: tlp != null ? tlp() : this.tlp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudforceOneRequestsRequestConstants &&
          listEquals(priority, other.priority) &&
          listEquals(status, other.status) &&
          listEquals(tlp, other.tlp); } 
@override int get hashCode { return Object.hash(Object.hashAll(priority ?? const []), Object.hashAll(status ?? const []), Object.hashAll(tlp ?? const [])); } 
@override String toString() { return 'CloudforceOneRequestsRequestConstants(priority: $priority, status: $status, tlp: $tlp)'; } 
 }
