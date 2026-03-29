// GENERATED CODE - DO NOT MODIFY BY HAND

import 'security_advisory_credit_types.dart';final class RepositoryAdvisoryCredits {const RepositoryAdvisoryCredits({this.login, this.type, });

factory RepositoryAdvisoryCredits.fromJson(Map<String, dynamic> json) { return RepositoryAdvisoryCredits(
  login: json['login'] as String?,
  type: json['type'] != null ? SecurityAdvisoryCreditTypes.fromJson(json['type'] as String) : null,
); }

/// The username of the user credited.
final String? login;

/// The type of credit the user is receiving.
final SecurityAdvisoryCreditTypes? type;

Map<String, dynamic> toJson() { return {
  'login': ?login,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
RepositoryAdvisoryCredits copyWith({String Function()? login, SecurityAdvisoryCreditTypes Function()? type, }) { return RepositoryAdvisoryCredits(
  login: login != null ? login() : this.login,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryAdvisoryCredits &&
          login == other.login &&
          type == other.type; } 
@override int get hashCode { return Object.hash(login, type); } 
@override String toString() { return 'RepositoryAdvisoryCredits(login: $login, type: $type)'; } 
 }
