// GENERATED CODE - DO NOT MODIFY BY HAND

/// SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
final class SecretReference {const SecretReference({this.name, this.namespace, });

factory SecretReference.fromJson(Map<String, dynamic> json) { return SecretReference(
  name: json['name'] as String?,
  namespace: json['namespace'] as String?,
); }

/// name is unique within a namespace to reference a secret resource.
final String? name;

/// namespace defines the space within which the secret name must be unique.
final String? namespace;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'namespace': ?namespace,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'namespace'}.contains(key)); } 
SecretReference copyWith({String Function()? name, String Function()? namespace, }) { return SecretReference(
  name: name != null ? name() : this.name,
  namespace: namespace != null ? namespace() : this.namespace,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretReference &&
          name == other.name &&
          namespace == other.namespace; } 
@override int get hashCode { return Object.hash(name, namespace); } 
@override String toString() { return 'SecretReference(name: $name, namespace: $namespace)'; } 
 }
