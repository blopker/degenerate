// GENERATED CODE - DO NOT MODIFY BY HAND

/// Durable Object binding.
final class PagesDeploymentConfigValuesRequestDurableObjectNamespacesValue {const PagesDeploymentConfigValuesRequestDurableObjectNamespacesValue({required this.namespaceId});

factory PagesDeploymentConfigValuesRequestDurableObjectNamespacesValue.fromJson(Map<String, dynamic> json) { return PagesDeploymentConfigValuesRequestDurableObjectNamespacesValue(
  namespaceId: json['namespace_id'] as String,
); }

/// ID of the Durable Object namespace.
final String namespaceId;

Map<String, dynamic> toJson() { return {
  'namespace_id': namespaceId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('namespace_id') && json['namespace_id'] is String; } 
PagesDeploymentConfigValuesRequestDurableObjectNamespacesValue copyWith({String? namespaceId}) { return PagesDeploymentConfigValuesRequestDurableObjectNamespacesValue(
  namespaceId: namespaceId ?? this.namespaceId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesDeploymentConfigValuesRequestDurableObjectNamespacesValue &&
          namespaceId == other.namespaceId; } 
@override int get hashCode { return namespaceId.hashCode; } 
@override String toString() { return 'PagesDeploymentConfigValuesRequestDurableObjectNamespacesValue(namespaceId: $namespaceId)'; } 
 }
