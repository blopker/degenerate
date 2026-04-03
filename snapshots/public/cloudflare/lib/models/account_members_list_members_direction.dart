// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Direction to order results.
@immutable final class AccountMembersListMembersDirection {const AccountMembersListMembersDirection._(this.value);

factory AccountMembersListMembersDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => AccountMembersListMembersDirection._(json),
}; }

static const AccountMembersListMembersDirection asc = AccountMembersListMembersDirection._('asc');

static const AccountMembersListMembersDirection desc = AccountMembersListMembersDirection._('desc');

static const List<AccountMembersListMembersDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountMembersListMembersDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountMembersListMembersDirection($value)'; } 
 }
