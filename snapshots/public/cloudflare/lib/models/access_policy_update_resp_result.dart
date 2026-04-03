// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_policy_test_id.dart';/// The percentage of (processed) users approved based on policy evaluation results.
extension type const AccessPercentApproved(int value) {
factory AccessPercentApproved.fromJson(num json) => AccessPercentApproved(json.toInt());

num toJson() => value;

}
/// The percentage of (processed) users blocked based on policy evaluation results.
extension type const AccessPercentBlocked(int value) {
factory AccessPercentBlocked.fromJson(num json) => AccessPercentBlocked(json.toInt());

num toJson() => value;

}
/// The percentage of (processed) users errored based on policy evaluation results.
extension type const AccessPercentErrored(int value) {
factory AccessPercentErrored.fromJson(num json) => AccessPercentErrored(json.toInt());

num toJson() => value;

}
/// The percentage of users processed so far (of the entire user base).
extension type const AccessPercentUsersProcessed(int value) {
factory AccessPercentUsersProcessed.fromJson(num json) => AccessPercentUsersProcessed(json.toInt());

num toJson() => value;

}
/// The total number of users in the user base.
extension type const AccessTotalUsers(int value) {
factory AccessTotalUsers.fromJson(num json) => AccessTotalUsers(json.toInt());

num toJson() => value;

}
/// The status of the policy test.
@immutable final class AccessUpdateStatus {const AccessUpdateStatus._(this.value);

factory AccessUpdateStatus.fromJson(String json) { return switch (json) {
  'blocked' => blocked,
  'processing' => processing,
  'exceeded time' => exceededTime,
  'complete' => complete,
  _ => AccessUpdateStatus._(json),
}; }

static const AccessUpdateStatus blocked = AccessUpdateStatus._('blocked');

static const AccessUpdateStatus processing = AccessUpdateStatus._('processing');

static const AccessUpdateStatus exceededTime = AccessUpdateStatus._('exceeded time');

static const AccessUpdateStatus complete = AccessUpdateStatus._('complete');

static const List<AccessUpdateStatus> values = [blocked, processing, exceededTime, complete];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessUpdateStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessUpdateStatus($value)'; } 
 }
/// The number of (processed) users approved based on policy evaluation results.
extension type const AccessUsersApproved(int value) {
factory AccessUsersApproved.fromJson(num json) => AccessUsersApproved(json.toInt());

num toJson() => value;

}
/// The number of (processed) users blocked based on policy evaluation results.
extension type const AccessUsersBlocked(int value) {
factory AccessUsersBlocked.fromJson(num json) => AccessUsersBlocked(json.toInt());

num toJson() => value;

}
/// The number of (processed) users errored based on policy evaluation results.
extension type const AccessUsersErrored(int value) {
factory AccessUsersErrored.fromJson(num json) => AccessUsersErrored(json.toInt());

num toJson() => value;

}
@immutable final class AccessPolicyUpdateRespResult {const AccessPolicyUpdateRespResult({this.id, this.percentApproved, this.percentBlocked, this.percentErrored, this.percentUsersProcessed, this.status, this.totalUsers, this.usersApproved, this.usersBlocked, this.usersErrored, });

factory AccessPolicyUpdateRespResult.fromJson(Map<String, dynamic> json) { return AccessPolicyUpdateRespResult(
  id: json['id'] != null ? AccessPolicyTestId.fromJson(json['id'] as String) : null,
  percentApproved: json['percent_approved'] != null ? AccessPercentApproved.fromJson(json['percent_approved'] as num) : null,
  percentBlocked: json['percent_blocked'] != null ? AccessPercentBlocked.fromJson(json['percent_blocked'] as num) : null,
  percentErrored: json['percent_errored'] != null ? AccessPercentErrored.fromJson(json['percent_errored'] as num) : null,
  percentUsersProcessed: json['percent_users_processed'] != null ? AccessPercentUsersProcessed.fromJson(json['percent_users_processed'] as num) : null,
  status: json['status'] != null ? AccessUpdateStatus.fromJson(json['status'] as String) : null,
  totalUsers: json['total_users'] != null ? AccessTotalUsers.fromJson(json['total_users'] as num) : null,
  usersApproved: json['users_approved'] != null ? AccessUsersApproved.fromJson(json['users_approved'] as num) : null,
  usersBlocked: json['users_blocked'] != null ? AccessUsersBlocked.fromJson(json['users_blocked'] as num) : null,
  usersErrored: json['users_errored'] != null ? AccessUsersErrored.fromJson(json['users_errored'] as num) : null,
); }

/// The UUID of the policy test.
final AccessPolicyTestId? id;

/// The percentage of (processed) users approved based on policy evaluation results.
final AccessPercentApproved? percentApproved;

/// The percentage of (processed) users blocked based on policy evaluation results.
final AccessPercentBlocked? percentBlocked;

/// The percentage of (processed) users errored based on policy evaluation results.
final AccessPercentErrored? percentErrored;

/// The percentage of users processed so far (of the entire user base).
final AccessPercentUsersProcessed? percentUsersProcessed;

final AccessUpdateStatus? status;

final AccessTotalUsers? totalUsers;

final AccessUsersApproved? usersApproved;

final AccessUsersBlocked? usersBlocked;

final AccessUsersErrored? usersErrored;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (percentApproved != null) 'percent_approved': percentApproved?.toJson(),
  if (percentBlocked != null) 'percent_blocked': percentBlocked?.toJson(),
  if (percentErrored != null) 'percent_errored': percentErrored?.toJson(),
  if (percentUsersProcessed != null) 'percent_users_processed': percentUsersProcessed?.toJson(),
  if (status != null) 'status': status?.toJson(),
  if (totalUsers != null) 'total_users': totalUsers?.toJson(),
  if (usersApproved != null) 'users_approved': usersApproved?.toJson(),
  if (usersBlocked != null) 'users_blocked': usersBlocked?.toJson(),
  if (usersErrored != null) 'users_errored': usersErrored?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'percent_approved', 'percent_blocked', 'percent_errored', 'percent_users_processed', 'status', 'total_users', 'users_approved', 'users_blocked', 'users_errored'}.contains(key)); } 
AccessPolicyUpdateRespResult copyWith({AccessPolicyTestId Function()? id, AccessPercentApproved Function()? percentApproved, AccessPercentBlocked Function()? percentBlocked, AccessPercentErrored Function()? percentErrored, AccessPercentUsersProcessed Function()? percentUsersProcessed, AccessUpdateStatus Function()? status, AccessTotalUsers Function()? totalUsers, AccessUsersApproved Function()? usersApproved, AccessUsersBlocked Function()? usersBlocked, AccessUsersErrored Function()? usersErrored, }) { return AccessPolicyUpdateRespResult(
  id: id != null ? id() : this.id,
  percentApproved: percentApproved != null ? percentApproved() : this.percentApproved,
  percentBlocked: percentBlocked != null ? percentBlocked() : this.percentBlocked,
  percentErrored: percentErrored != null ? percentErrored() : this.percentErrored,
  percentUsersProcessed: percentUsersProcessed != null ? percentUsersProcessed() : this.percentUsersProcessed,
  status: status != null ? status() : this.status,
  totalUsers: totalUsers != null ? totalUsers() : this.totalUsers,
  usersApproved: usersApproved != null ? usersApproved() : this.usersApproved,
  usersBlocked: usersBlocked != null ? usersBlocked() : this.usersBlocked,
  usersErrored: usersErrored != null ? usersErrored() : this.usersErrored,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessPolicyUpdateRespResult &&
          id == other.id &&
          percentApproved == other.percentApproved &&
          percentBlocked == other.percentBlocked &&
          percentErrored == other.percentErrored &&
          percentUsersProcessed == other.percentUsersProcessed &&
          status == other.status &&
          totalUsers == other.totalUsers &&
          usersApproved == other.usersApproved &&
          usersBlocked == other.usersBlocked &&
          usersErrored == other.usersErrored; } 
@override int get hashCode { return Object.hash(id, percentApproved, percentBlocked, percentErrored, percentUsersProcessed, status, totalUsers, usersApproved, usersBlocked, usersErrored); } 
@override String toString() { return 'AccessPolicyUpdateRespResult(id: $id, percentApproved: $percentApproved, percentBlocked: $percentBlocked, percentErrored: $percentErrored, percentUsersProcessed: $percentUsersProcessed, status: $status, totalUsers: $totalUsers, usersApproved: $usersApproved, usersBlocked: $usersBlocked, usersErrored: $usersErrored)'; } 
 }
