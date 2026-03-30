// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccessActiveSessionResponseResultIdp {const AccessActiveSessionResponseResultIdp({this.id, this.type, });

factory AccessActiveSessionResponseResultIdp.fromJson(Map<String, dynamic> json) { return AccessActiveSessionResponseResultIdp(
  id: json['id'] as String?,
  type: json['type'] as String?,
); }

final String? id;

final String? type;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'type': ?type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'type'}.contains(key)); } 
AccessActiveSessionResponseResultIdp copyWith({String Function()? id, String Function()? type, }) { return AccessActiveSessionResponseResultIdp(
  id: id != null ? id() : this.id,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessActiveSessionResponseResultIdp &&
          id == other.id &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, type); } 
@override String toString() { return 'AccessActiveSessionResponseResultIdp(id: $id, type: $type)'; } 
 }
