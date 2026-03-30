// GENERATED CODE - DO NOT MODIFY BY HAND

final class NamespaceWorkerCreateRequest {const NamespaceWorkerCreateRequest({this.name});

factory NamespaceWorkerCreateRequest.fromJson(Map<String, dynamic> json) { return NamespaceWorkerCreateRequest(
  name: json['name'] as String?,
); }

/// The name of the dispatch namespace.
final String? name;

Map<String, dynamic> toJson() { return {
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name'}.contains(key)); } 
NamespaceWorkerCreateRequest copyWith({String Function()? name}) { return NamespaceWorkerCreateRequest(
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NamespaceWorkerCreateRequest &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'NamespaceWorkerCreateRequest(name: $name)'; } 
 }
