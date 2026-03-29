// GENERATED CODE - DO NOT MODIFY BY HAND

/// Analytics Engine binding.
final class PagesDeploymentConfigValuesRequestAnalyticsEngineDatasetsValue {const PagesDeploymentConfigValuesRequestAnalyticsEngineDatasetsValue({required this.dataset});

factory PagesDeploymentConfigValuesRequestAnalyticsEngineDatasetsValue.fromJson(Map<String, dynamic> json) { return PagesDeploymentConfigValuesRequestAnalyticsEngineDatasetsValue(
  dataset: json['dataset'] as String,
); }

/// Name of the dataset.
final String dataset;

Map<String, dynamic> toJson() { return {
  'dataset': dataset,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('dataset') && json['dataset'] is String; } 
PagesDeploymentConfigValuesRequestAnalyticsEngineDatasetsValue copyWith({String? dataset}) { return PagesDeploymentConfigValuesRequestAnalyticsEngineDatasetsValue(
  dataset: dataset ?? this.dataset,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesDeploymentConfigValuesRequestAnalyticsEngineDatasetsValue &&
          dataset == other.dataset; } 
@override int get hashCode { return dataset.hashCode; } 
@override String toString() { return 'PagesDeploymentConfigValuesRequestAnalyticsEngineDatasetsValue(dataset: $dataset)'; } 
 }
