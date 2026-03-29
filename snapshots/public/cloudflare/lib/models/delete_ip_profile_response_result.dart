// GENERATED CODE - DO NOT MODIFY BY HAND

final class DeleteIpProfileResponseResult {const DeleteIpProfileResponseResult({this.id});

factory DeleteIpProfileResponseResult.fromJson(Map<String, dynamic> json) { return DeleteIpProfileResponseResult(
  id: json['id'] as String?,
); }

/// ID of the deleted Device IP profile.
final String? id;

Map<String, dynamic> toJson() { return {
  'id': ?id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
DeleteIpProfileResponseResult copyWith({String Function()? id}) { return DeleteIpProfileResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteIpProfileResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'DeleteIpProfileResponseResult(id: $id)'; } 
 }
