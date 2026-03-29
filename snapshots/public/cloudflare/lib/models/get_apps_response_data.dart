// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetAppsResponseData {const GetAppsResponseData({this.createdAt, this.id, this.name, });

factory GetAppsResponseData.fromJson(Map<String, dynamic> json) { return GetAppsResponseData(
  createdAt: json['created_at'] as String?,
  id: json['id'] as String?,
  name: json['name'] as String?,
); }

final String? createdAt;

final String? id;

final String? name;

Map<String, dynamic> toJson() { return {
  'created_at': ?createdAt,
  'id': ?id,
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created_at', 'id', 'name'}.contains(key)); } 
GetAppsResponseData copyWith({String Function()? createdAt, String Function()? id, String Function()? name, }) { return GetAppsResponseData(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetAppsResponseData &&
          createdAt == other.createdAt &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(createdAt, id, name); } 
@override String toString() { return 'GetAppsResponseData(createdAt: $createdAt, id: $id, name: $name)'; } 
 }
