// GENERATED CODE - DO NOT MODIFY BY HAND

final class TeamsDevicesAccount {const TeamsDevicesAccount({this.accountType, this.id, this.name, });

factory TeamsDevicesAccount.fromJson(Map<String, dynamic> json) { return TeamsDevicesAccount(
  accountType: json['account_type'] as String?,
  id: json['id'] as String?,
  name: json['name'] as String?,
); }

final String? accountType;

final String? id;

/// The name of the enrolled account.
final String? name;

Map<String, dynamic> toJson() { return {
  'account_type': ?accountType,
  'id': ?id,
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_type', 'id', 'name'}.contains(key)); } 
TeamsDevicesAccount copyWith({String Function()? accountType, String Function()? id, String Function()? name, }) { return TeamsDevicesAccount(
  accountType: accountType != null ? accountType() : this.accountType,
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesAccount &&
          accountType == other.accountType &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(accountType, id, name); } 
@override String toString() { return 'TeamsDevicesAccount(accountType: $accountType, id: $id, name: $name)'; } 
 }
