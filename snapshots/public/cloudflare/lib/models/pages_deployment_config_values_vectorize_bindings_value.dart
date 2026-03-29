// GENERATED CODE - DO NOT MODIFY BY HAND

/// Vectorize binding.
final class PagesDeploymentConfigValuesVectorizeBindingsValue {const PagesDeploymentConfigValuesVectorizeBindingsValue({required this.indexName});

factory PagesDeploymentConfigValuesVectorizeBindingsValue.fromJson(Map<String, dynamic> json) { return PagesDeploymentConfigValuesVectorizeBindingsValue(
  indexName: json['index_name'] as String,
); }

final String indexName;

Map<String, dynamic> toJson() { return {
  'index_name': indexName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('index_name') && json['index_name'] is String; } 
PagesDeploymentConfigValuesVectorizeBindingsValue copyWith({String? indexName}) { return PagesDeploymentConfigValuesVectorizeBindingsValue(
  indexName: indexName ?? this.indexName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesDeploymentConfigValuesVectorizeBindingsValue &&
          indexName == other.indexName; } 
@override int get hashCode { return indexName.hashCode; } 
@override String toString() { return 'PagesDeploymentConfigValuesVectorizeBindingsValue(indexName: $indexName)'; } 
 }
