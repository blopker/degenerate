// GENERATED CODE - DO NOT MODIFY BY HAND

/// information related to the tenant unit, and optionally, an id of the unit to create the account on. see https://developers.cloudflare.com/tenant/how-to/manage-accounts/
final class IamCreateAccountUnit {const IamCreateAccountUnit({this.id});

factory IamCreateAccountUnit.fromJson(Map<String, dynamic> json) { return IamCreateAccountUnit(
  id: json['id'] as String?,
); }

/// Tenant unit ID
final String? id;

Map<String, dynamic> toJson() { return {
  'id': ?id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
IamCreateAccountUnit copyWith({String Function()? id}) { return IamCreateAccountUnit(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamCreateAccountUnit &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'IamCreateAccountUnit(id: $id)'; } 
 }
