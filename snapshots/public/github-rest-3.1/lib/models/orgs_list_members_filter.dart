// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class OrgsListMembersFilter {const OrgsListMembersFilter._(this.value);

factory OrgsListMembersFilter.fromJson(String json) { return switch (json) {
  '2fa_disabled' => $2faDisabled,
  '2fa_insecure' => $2faInsecure,
  'all' => all,
  _ => OrgsListMembersFilter._(json),
}; }

static const OrgsListMembersFilter $2faDisabled = OrgsListMembersFilter._('2fa_disabled');

static const OrgsListMembersFilter $2faInsecure = OrgsListMembersFilter._('2fa_insecure');

static const OrgsListMembersFilter all = OrgsListMembersFilter._('all');

static const List<OrgsListMembersFilter> values = [$2faDisabled, $2faInsecure, all];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsListMembersFilter && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OrgsListMembersFilter($value)'; } 
 }
