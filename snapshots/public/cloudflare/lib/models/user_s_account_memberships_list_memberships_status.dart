// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Status of this membership.
@immutable final class UserSAccountMembershipsListMembershipsStatus {const UserSAccountMembershipsListMembershipsStatus._(this.value);

factory UserSAccountMembershipsListMembershipsStatus.fromJson(String json) { return switch (json) {
  'accepted' => accepted,
  'pending' => pending,
  'rejected' => rejected,
  _ => UserSAccountMembershipsListMembershipsStatus._(json),
}; }

static const UserSAccountMembershipsListMembershipsStatus accepted = UserSAccountMembershipsListMembershipsStatus._('accepted');

static const UserSAccountMembershipsListMembershipsStatus pending = UserSAccountMembershipsListMembershipsStatus._('pending');

static const UserSAccountMembershipsListMembershipsStatus rejected = UserSAccountMembershipsListMembershipsStatus._('rejected');

static const List<UserSAccountMembershipsListMembershipsStatus> values = [accepted, pending, rejected];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UserSAccountMembershipsListMembershipsStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UserSAccountMembershipsListMembershipsStatus($value)'; } 
 }
