// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Direction to order results.
@immutable final class AccountsListAccountsDirection {const AccountsListAccountsDirection._(this.value);

factory AccountsListAccountsDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => AccountsListAccountsDirection._(json),
}; }

static const AccountsListAccountsDirection asc = AccountsListAccountsDirection._('asc');

static const AccountsListAccountsDirection desc = AccountsListAccountsDirection._('desc');

static const List<AccountsListAccountsDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountsListAccountsDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountsListAccountsDirection($value)'; } 
 }
