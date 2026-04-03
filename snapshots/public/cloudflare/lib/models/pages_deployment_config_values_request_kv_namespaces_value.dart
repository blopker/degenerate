// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// KV namespace binding.
@immutable final class PagesDeploymentConfigValuesRequestKvNamespacesValue {const PagesDeploymentConfigValuesRequestKvNamespacesValue({required this.namespaceId});

factory PagesDeploymentConfigValuesRequestKvNamespacesValue.fromJson(Map<String, dynamic> json) { return PagesDeploymentConfigValuesRequestKvNamespacesValue(
  namespaceId: json['namespace_id'] as String,
); }

/// ID of the KV namespace.
final String namespaceId;

Map<String, dynamic> toJson() { return {
  'namespace_id': namespaceId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('namespace_id') && json['namespace_id'] is String; } 
PagesDeploymentConfigValuesRequestKvNamespacesValue copyWith({String? namespaceId}) { return PagesDeploymentConfigValuesRequestKvNamespacesValue(
  namespaceId: namespaceId ?? this.namespaceId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesDeploymentConfigValuesRequestKvNamespacesValue &&
          namespaceId == other.namespaceId; } 
@override int get hashCode { return namespaceId.hashCode; } 
@override String toString() { return 'PagesDeploymentConfigValuesRequestKvNamespacesValue(namespaceId: $namespaceId)'; } 
 }
