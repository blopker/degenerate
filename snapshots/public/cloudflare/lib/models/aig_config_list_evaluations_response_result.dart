// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_list_evaluations_response_result_datasets.dart';import 'aig_config_list_evaluations_response_result_results.dart';final class AigConfigListEvaluationsResponseResult {const AigConfigListEvaluationsResponseResult({required this.createdAt, required this.datasets, required this.gatewayId, required this.id, required this.modifiedAt, required this.name, required this.processed, required this.results, required this.totalLogs, });

factory AigConfigListEvaluationsResponseResult.fromJson(Map<String, dynamic> json) { return AigConfigListEvaluationsResponseResult(
  createdAt: DateTime.parse(json['created_at'] as String),
  datasets: (json['datasets'] as List<dynamic>).map((e) => AigConfigListEvaluationsResponseResultDatasets.fromJson(e as Map<String, dynamic>)).toList(),
  gatewayId: json['gateway_id'] as String,
  id: json['id'] as String,
  modifiedAt: DateTime.parse(json['modified_at'] as String),
  name: json['name'] as String,
  processed: json['processed'] as bool,
  results: (json['results'] as List<dynamic>).map((e) => AigConfigListEvaluationsResponseResultResults.fromJson(e as Map<String, dynamic>)).toList(),
  totalLogs: (json['total_logs'] as num).toDouble(),
); }

final DateTime createdAt;

final List<AigConfigListEvaluationsResponseResultDatasets> datasets;

/// gateway id
final String gatewayId;

final String id;

final DateTime modifiedAt;

final String name;

final bool processed;

final List<AigConfigListEvaluationsResponseResultResults> results;

final double totalLogs;

Map<String, dynamic> toJson() { return {
  'created_at': createdAt.toIso8601String(),
  'datasets': datasets.map((e) => e.toJson()).toList(),
  'gateway_id': gatewayId,
  'id': id,
  'modified_at': modifiedAt.toIso8601String(),
  'name': name,
  'processed': processed,
  'results': results.map((e) => e.toJson()).toList(),
  'total_logs': totalLogs,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('datasets') &&
      json.containsKey('gateway_id') && json['gateway_id'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('modified_at') && json['modified_at'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('processed') && json['processed'] is bool &&
      json.containsKey('results') &&
      json.containsKey('total_logs') && json['total_logs'] is num; } 
AigConfigListEvaluationsResponseResult copyWith({DateTime? createdAt, List<AigConfigListEvaluationsResponseResultDatasets>? datasets, String? gatewayId, String? id, DateTime? modifiedAt, String? name, bool? processed, List<AigConfigListEvaluationsResponseResultResults>? results, double? totalLogs, }) { return AigConfigListEvaluationsResponseResult(
  createdAt: createdAt ?? this.createdAt,
  datasets: datasets ?? this.datasets,
  gatewayId: gatewayId ?? this.gatewayId,
  id: id ?? this.id,
  modifiedAt: modifiedAt ?? this.modifiedAt,
  name: name ?? this.name,
  processed: processed ?? this.processed,
  results: results ?? this.results,
  totalLogs: totalLogs ?? this.totalLogs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigListEvaluationsResponseResult &&
          createdAt == other.createdAt &&
          listEquals(datasets, other.datasets) &&
          gatewayId == other.gatewayId &&
          id == other.id &&
          modifiedAt == other.modifiedAt &&
          name == other.name &&
          processed == other.processed &&
          listEquals(results, other.results) &&
          totalLogs == other.totalLogs; } 
@override int get hashCode { return Object.hash(createdAt, Object.hashAll(datasets), gatewayId, id, modifiedAt, name, processed, Object.hashAll(results), totalLogs); } 
@override String toString() { return 'AigConfigListEvaluationsResponseResult(createdAt: $createdAt, datasets: $datasets, gatewayId: $gatewayId, id: $id, modifiedAt: $modifiedAt, name: $name, processed: $processed, results: $results, totalLogs: $totalLogs)'; } 
 }
