// GENERATED CODE - DO NOT MODIFY BY HAND

/// A member's status in the account.
final class AccountMembersListMembersStatus {const AccountMembersListMembersStatus._(this.value);

factory AccountMembersListMembersStatus.fromJson(String json) { return switch (json) {
  'accepted' => accepted,
  'pending' => pending,
  'rejected' => rejected,
  _ => AccountMembersListMembersStatus._(json),
}; }

static const AccountMembersListMembersStatus accepted = AccountMembersListMembersStatus._('accepted');

static const AccountMembersListMembersStatus pending = AccountMembersListMembersStatus._('pending');

static const AccountMembersListMembersStatus rejected = AccountMembersListMembersStatus._('rejected');

static const List<AccountMembersListMembersStatus> values = [accepted, pending, rejected];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountMembersListMembersStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountMembersListMembersStatus($value)'; } 
 }
