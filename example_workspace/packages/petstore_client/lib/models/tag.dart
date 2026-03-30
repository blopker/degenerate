// GENERATED CODE - DO NOT MODIFY BY HAND

final class Tag {const Tag({this.id, this.name, });

factory Tag.fromJson(Map<String, dynamic> json) { return Tag(
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
Tag copyWith({int Function()? id, String Function()? name, }) { return Tag(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Tag &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(id, name); } 
@override String toString() { return 'Tag(id: $id, name: $name)'; } 
 }
