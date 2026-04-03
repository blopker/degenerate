// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class MembersListStatus {const MembersListStatus._(this.value);

factory MembersListStatus.fromJson(String json) { return switch (json) {
  'active' => active,
  'canceled' => canceled,
  _ => MembersListStatus._(json),
}; }

static const MembersListStatus active = MembersListStatus._('active');

static const MembersListStatus canceled = MembersListStatus._('canceled');

static const List<MembersListStatus> values = [active, canceled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MembersListStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MembersListStatus($value)'; } 
 }
