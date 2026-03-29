// GENERATED CODE - DO NOT MODIFY BY HAND

import 'security_advisory_credit_types.dart';import 'simple_user.dart';/// The state of the user's acceptance of the credit.
final class RepositoryAdvisoryCreditState {const RepositoryAdvisoryCreditState._(this.value);

factory RepositoryAdvisoryCreditState.fromJson(String json) { return switch (json) {
  'accepted' => accepted,
  'declined' => declined,
  'pending' => pending,
  _ => RepositoryAdvisoryCreditState._(json),
}; }

static const RepositoryAdvisoryCreditState accepted = RepositoryAdvisoryCreditState._('accepted');

static const RepositoryAdvisoryCreditState declined = RepositoryAdvisoryCreditState._('declined');

static const RepositoryAdvisoryCreditState pending = RepositoryAdvisoryCreditState._('pending');

static const List<RepositoryAdvisoryCreditState> values = [accepted, declined, pending];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryAdvisoryCreditState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryAdvisoryCreditState($value)'; } 
 }
/// A credit given to a user for a repository security advisory.
final class RepositoryAdvisoryCredit {const RepositoryAdvisoryCredit({required this.user, required this.type, required this.state, });

factory RepositoryAdvisoryCredit.fromJson(Map<String, dynamic> json) { return RepositoryAdvisoryCredit(
  user: SimpleUser.fromJson(json['user'] as Map<String, dynamic>),
  type: SecurityAdvisoryCreditTypes.fromJson(json['type'] as String),
  state: RepositoryAdvisoryCreditState.fromJson(json['state'] as String),
); }

final SimpleUser user;

/// The type of credit the user is receiving.
final SecurityAdvisoryCreditTypes type;

/// The state of the user's acceptance of the credit.
final RepositoryAdvisoryCreditState state;

Map<String, dynamic> toJson() { return {
  'user': user.toJson(),
  'type': type.toJson(),
  'state': state.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('user') &&
      json.containsKey('type') &&
      json.containsKey('state'); } 
RepositoryAdvisoryCredit copyWith({SimpleUser? user, SecurityAdvisoryCreditTypes? type, RepositoryAdvisoryCreditState? state, }) { return RepositoryAdvisoryCredit(
  user: user ?? this.user,
  type: type ?? this.type,
  state: state ?? this.state,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryAdvisoryCredit &&
          user == other.user &&
          type == other.type &&
          state == other.state; } 
@override int get hashCode { return Object.hash(user, type, state); } 
@override String toString() { return 'RepositoryAdvisoryCredit(user: $user, type: $type, state: $state)'; } 
 }
