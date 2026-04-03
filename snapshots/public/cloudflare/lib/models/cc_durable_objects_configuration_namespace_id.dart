// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Durable object configuration using a namespace ID
@immutable final class CcDurableObjectsConfigurationNamespaceId {const CcDurableObjectsConfigurationNamespaceId({required this.namespaceId});

factory CcDurableObjectsConfigurationNamespaceId.fromJson(Map<String, dynamic> json) { return CcDurableObjectsConfigurationNamespaceId(
  namespaceId: json['namespace_id'] as String,
); }

/// The namespace ID of the durable object namespace to use for this application.
final String namespaceId;

Map<String, dynamic> toJson() { return {
  'namespace_id': namespaceId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('namespace_id') && json['namespace_id'] is String; } 
CcDurableObjectsConfigurationNamespaceId copyWith({String? namespaceId}) { return CcDurableObjectsConfigurationNamespaceId(
  namespaceId: namespaceId ?? this.namespaceId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CcDurableObjectsConfigurationNamespaceId &&
          namespaceId == other.namespaceId; } 
@override int get hashCode { return namespaceId.hashCode; } 
@override String toString() { return 'CcDurableObjectsConfigurationNamespaceId(namespaceId: $namespaceId)'; } 
 }
