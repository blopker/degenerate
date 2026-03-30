// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'request_tracer_trace2.dart';/// Trace result with an origin status code
final class AccountRequestTracerRequestTraceResponseResult {const AccountRequestTracerRequestTraceResponseResult({this.statusCode, this.trace, });

factory AccountRequestTracerRequestTraceResponseResult.fromJson(Map<String, dynamic> json) { return AccountRequestTracerRequestTraceResponseResult(
  statusCode: json['status_code'] != null ? (json['status_code'] as num).toInt() : null,
  trace: (json['trace'] as List<dynamic>?)?.map((e) => RequestTracerTrace2.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// HTTP Status code of zone response
final int? statusCode;

final List<RequestTracerTrace2>? trace;

Map<String, dynamic> toJson() { return {
  'status_code': ?statusCode,
  if (trace != null) 'trace': trace?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'status_code', 'trace'}.contains(key)); } 
AccountRequestTracerRequestTraceResponseResult copyWith({int Function()? statusCode, List<RequestTracerTrace2> Function()? trace, }) { return AccountRequestTracerRequestTraceResponseResult(
  statusCode: statusCode != null ? statusCode() : this.statusCode,
  trace: trace != null ? trace() : this.trace,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountRequestTracerRequestTraceResponseResult &&
          statusCode == other.statusCode &&
          listEquals(trace, other.trace); } 
@override int get hashCode { return Object.hash(statusCode, Object.hashAll(trace ?? const [])); } 
@override String toString() { return 'AccountRequestTracerRequestTraceResponseResult(statusCode: $statusCode, trace: $trace)'; } 
 }
