// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigCreateEvaluationsRequest {const AigConfigCreateEvaluationsRequest({required this.datasetIds, required this.evaluationTypeIds, required this.name, });

factory AigConfigCreateEvaluationsRequest.fromJson(Map<String, dynamic> json) { return AigConfigCreateEvaluationsRequest(
  datasetIds: (json['dataset_ids'] as List<dynamic>).map((e) => e as String).toList(),
  evaluationTypeIds: (json['evaluation_type_ids'] as List<dynamic>).map((e) => e as String).toList(),
  name: json['name'] as String,
); }

final List<String> datasetIds;

final List<String> evaluationTypeIds;

final String name;

Map<String, dynamic> toJson() { return {
  'dataset_ids': datasetIds,
  'evaluation_type_ids': evaluationTypeIds,
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('dataset_ids') &&
      json.containsKey('evaluation_type_ids') &&
      json.containsKey('name') && json['name'] is String; } 
AigConfigCreateEvaluationsRequest copyWith({List<String>? datasetIds, List<String>? evaluationTypeIds, String? name, }) { return AigConfigCreateEvaluationsRequest(
  datasetIds: datasetIds ?? this.datasetIds,
  evaluationTypeIds: evaluationTypeIds ?? this.evaluationTypeIds,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigCreateEvaluationsRequest &&
          listEquals(datasetIds, other.datasetIds) &&
          listEquals(evaluationTypeIds, other.evaluationTypeIds) &&
          name == other.name; } 
@override int get hashCode { return Object.hash(Object.hashAll(datasetIds), Object.hashAll(evaluationTypeIds), name); } 
@override String toString() { return 'AigConfigCreateEvaluationsRequest(datasetIds: $datasetIds, evaluationTypeIds: $evaluationTypeIds, name: $name)'; } 
 }
