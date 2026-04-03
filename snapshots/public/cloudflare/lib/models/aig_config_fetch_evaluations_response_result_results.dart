// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigFetchEvaluationsResponseResultResults {const AigConfigFetchEvaluationsResponseResultResults({required this.createdAt, required this.evaluationId, required this.evaluationTypeId, required this.id, required this.modifiedAt, required this.result, required this.status, required this.statusDescription, required this.totalLogs, });

factory AigConfigFetchEvaluationsResponseResultResults.fromJson(Map<String, dynamic> json) { return AigConfigFetchEvaluationsResponseResultResults(
  createdAt: DateTime.parse(json['created_at'] as String),
  evaluationId: json['evaluation_id'] as String,
  evaluationTypeId: json['evaluation_type_id'] as String,
  id: json['id'] as String,
  modifiedAt: DateTime.parse(json['modified_at'] as String),
  result: json['result'] as String,
  status: (json['status'] as num).toDouble(),
  statusDescription: json['status_description'] as String,
  totalLogs: (json['total_logs'] as num).toDouble(),
); }

final DateTime createdAt;

final String evaluationId;

final String evaluationTypeId;

final String id;

final DateTime modifiedAt;

final String result;

final double status;

final String statusDescription;

final double totalLogs;

Map<String, dynamic> toJson() { return {
  'created_at': createdAt.toIso8601String(),
  'evaluation_id': evaluationId,
  'evaluation_type_id': evaluationTypeId,
  'id': id,
  'modified_at': modifiedAt.toIso8601String(),
  'result': result,
  'status': status,
  'status_description': statusDescription,
  'total_logs': totalLogs,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('evaluation_id') && json['evaluation_id'] is String &&
      json.containsKey('evaluation_type_id') && json['evaluation_type_id'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('modified_at') && json['modified_at'] is String &&
      json.containsKey('result') && json['result'] is String &&
      json.containsKey('status') && json['status'] is num &&
      json.containsKey('status_description') && json['status_description'] is String &&
      json.containsKey('total_logs') && json['total_logs'] is num; } 
AigConfigFetchEvaluationsResponseResultResults copyWith({DateTime? createdAt, String? evaluationId, String? evaluationTypeId, String? id, DateTime? modifiedAt, String? result, double? status, String? statusDescription, double? totalLogs, }) { return AigConfigFetchEvaluationsResponseResultResults(
  createdAt: createdAt ?? this.createdAt,
  evaluationId: evaluationId ?? this.evaluationId,
  evaluationTypeId: evaluationTypeId ?? this.evaluationTypeId,
  id: id ?? this.id,
  modifiedAt: modifiedAt ?? this.modifiedAt,
  result: result ?? this.result,
  status: status ?? this.status,
  statusDescription: statusDescription ?? this.statusDescription,
  totalLogs: totalLogs ?? this.totalLogs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigFetchEvaluationsResponseResultResults &&
          createdAt == other.createdAt &&
          evaluationId == other.evaluationId &&
          evaluationTypeId == other.evaluationTypeId &&
          id == other.id &&
          modifiedAt == other.modifiedAt &&
          result == other.result &&
          status == other.status &&
          statusDescription == other.statusDescription &&
          totalLogs == other.totalLogs; } 
@override int get hashCode { return Object.hash(createdAt, evaluationId, evaluationTypeId, id, modifiedAt, result, status, statusDescription, totalLogs); } 
@override String toString() { return 'AigConfigFetchEvaluationsResponseResultResults(createdAt: $createdAt, evaluationId: $evaluationId, evaluationTypeId: $evaluationTypeId, id: $id, modifiedAt: $modifiedAt, result: $result, status: $status, statusDescription: $statusDescription, totalLogs: $totalLogs)'; } 
 }
