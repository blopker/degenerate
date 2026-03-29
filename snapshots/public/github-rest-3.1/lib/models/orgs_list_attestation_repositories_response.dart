// GENERATED CODE - DO NOT MODIFY BY HAND

final class OrgsListAttestationRepositoriesResponse {const OrgsListAttestationRepositoriesResponse({this.id, this.name, });

factory OrgsListAttestationRepositoriesResponse.fromJson(Map<String, dynamic> json) { return OrgsListAttestationRepositoriesResponse(
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
OrgsListAttestationRepositoriesResponse copyWith({int Function()? id, String Function()? name, }) { return OrgsListAttestationRepositoriesResponse(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrgsListAttestationRepositoriesResponse &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(id, name); } 
@override String toString() { return 'OrgsListAttestationRepositoriesResponse(id: $id, name: $name)'; } 
 }
