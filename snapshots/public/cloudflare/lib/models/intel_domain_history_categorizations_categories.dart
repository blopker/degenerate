// GENERATED CODE - DO NOT MODIFY BY HAND

final class IntelDomainHistoryCategorizationsCategories {const IntelDomainHistoryCategorizationsCategories({this.id, this.name, });

factory IntelDomainHistoryCategorizationsCategories.fromJson(Map<String, dynamic> json) { return IntelDomainHistoryCategorizationsCategories(
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
IntelDomainHistoryCategorizationsCategories copyWith({int Function()? id, String Function()? name, }) { return IntelDomainHistoryCategorizationsCategories(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IntelDomainHistoryCategorizationsCategories &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(id, name); } 
@override String toString() { return 'IntelDomainHistoryCategorizationsCategories(id: $id, name: $name)'; } 
 }
