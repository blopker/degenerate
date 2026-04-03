// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_monitor.dart';@immutable final class LoadBalancingMonitorResponseSingle {const LoadBalancingMonitorResponseSingle({this.result});

factory LoadBalancingMonitorResponseSingle.fromJson(Map<String, dynamic> json) { return LoadBalancingMonitorResponseSingle(
  result: json['result'] != null ? LoadBalancingMonitor.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final LoadBalancingMonitor? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
LoadBalancingMonitorResponseSingle copyWith({LoadBalancingMonitor Function()? result}) { return LoadBalancingMonitorResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingMonitorResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'LoadBalancingMonitorResponseSingle(result: $result)'; } 
 }
