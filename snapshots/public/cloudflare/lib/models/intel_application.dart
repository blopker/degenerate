// GENERATED CODE - DO NOT MODIFY BY HAND

/// Application that the hostname belongs to.
final class IntelApplication {const IntelApplication({this.id, this.name, });

factory IntelApplication.fromJson(Map<String, dynamic> json) { return IntelApplication(
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  name: json['name'] as String?,
); }

final int? id;

final String? name;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'name'}.contains(key)); } 
IntelApplication copyWith({int Function()? id, String Function()? name, }) { return IntelApplication(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IntelApplication &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(id, name); } 
@override String toString() { return 'IntelApplication(id: $id, name: $name)'; } 
 }
