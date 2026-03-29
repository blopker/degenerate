// GENERATED CODE - DO NOT MODIFY BY HAND

import 'security_advisory_credit_types.dart';final class RepositoryAdvisoryUpdateCredits {const RepositoryAdvisoryUpdateCredits({required this.login, required this.type, });

factory RepositoryAdvisoryUpdateCredits.fromJson(Map<String, dynamic> json) { return RepositoryAdvisoryUpdateCredits(
  login: json['login'] as String,
  type: SecurityAdvisoryCreditTypes.fromJson(json['type'] as String),
); }

/// The username of the user credited.
final String login;

/// The type of credit the user is receiving.
final SecurityAdvisoryCreditTypes type;

Map<String, dynamic> toJson() { return {
  'login': login,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('login') && json['login'] is String &&
      json.containsKey('type'); } 
RepositoryAdvisoryUpdateCredits copyWith({String? login, SecurityAdvisoryCreditTypes? type, }) { return RepositoryAdvisoryUpdateCredits(
  login: login ?? this.login,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryAdvisoryUpdateCredits &&
          login == other.login &&
          type == other.type; } 
@override int get hashCode { return Object.hash(login, type); } 
@override String toString() { return 'RepositoryAdvisoryUpdateCredits(login: $login, type: $type)'; } 
 }
