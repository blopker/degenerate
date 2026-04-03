// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class OrgsListMembersRole {const OrgsListMembersRole._(this.value);

factory OrgsListMembersRole.fromJson(String json) { return switch (json) {
  'all' => all,
  'admin' => admin,
  'member' => member,
  _ => OrgsListMembersRole._(json),
}; }

static const OrgsListMembersRole all = OrgsListMembersRole._('all');

static const OrgsListMembersRole admin = OrgsListMembersRole._('admin');

static const OrgsListMembersRole member = OrgsListMembersRole._('member');

static const List<OrgsListMembersRole> values = [all, admin, member];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsListMembersRole && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OrgsListMembersRole($value)'; } 
 }
