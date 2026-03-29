// GENERATED CODE - DO NOT MODIFY BY HAND

final class MemberSubjectUser {const MemberSubjectUser({required this.email, required this.id, required this.name, required this.twoFactorAuthenticationEnabled, });

factory MemberSubjectUser.fromJson(Map<String, dynamic> json) { return MemberSubjectUser(
  email: json['email'] as String,
  id: json['id'] as String,
  name: json['name'] as String,
  twoFactorAuthenticationEnabled: json['two_factor_authentication_enabled'] as bool,
); }

final String email;

final String id;

final String name;

final bool twoFactorAuthenticationEnabled;

Map<String, dynamic> toJson() { return {
  'email': email,
  'id': id,
  'name': name,
  'two_factor_authentication_enabled': twoFactorAuthenticationEnabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('email') && json['email'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('two_factor_authentication_enabled') && json['two_factor_authentication_enabled'] is bool; } 
MemberSubjectUser copyWith({String? email, String? id, String? name, bool? twoFactorAuthenticationEnabled, }) { return MemberSubjectUser(
  email: email ?? this.email,
  id: id ?? this.id,
  name: name ?? this.name,
  twoFactorAuthenticationEnabled: twoFactorAuthenticationEnabled ?? this.twoFactorAuthenticationEnabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MemberSubjectUser &&
          email == other.email &&
          id == other.id &&
          name == other.name &&
          twoFactorAuthenticationEnabled == other.twoFactorAuthenticationEnabled; } 
@override int get hashCode { return Object.hash(email, id, name, twoFactorAuthenticationEnabled); } 
@override String toString() { return 'MemberSubjectUser(email: $email, id: $id, name: $name, twoFactorAuthenticationEnabled: $twoFactorAuthenticationEnabled)'; } 
 }
