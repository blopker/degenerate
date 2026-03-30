// GENERATED CODE - DO NOT MODIFY BY HAND

final class SchemasZone {const SchemasZone({this.name});

factory SchemasZone.fromJson(Map<String, dynamic> json) { return SchemasZone(
  name: json['name'] as String?,
); }

final String? name;

Map<String, dynamic> toJson() { return {
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name'}.contains(key)); } 
SchemasZone copyWith({String Function()? name}) { return SchemasZone(
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SchemasZone &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'SchemasZone(name: $name)'; } 
 }
