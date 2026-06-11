// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aaa_uuid.dart';@immutable final class NotificationPoliciesUpdateANotificationPolicyResponse4XxResult {const NotificationPoliciesUpdateANotificationPolicyResponse4XxResult({this.id});

factory NotificationPoliciesUpdateANotificationPolicyResponse4XxResult.fromJson(Map<String, dynamic> json) { return NotificationPoliciesUpdateANotificationPolicyResponse4XxResult(
  id: json['id'] != null ? AaaUuid.fromJson(json['id'] as String) : null,
); }

/// UUID
final AaaUuid? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
NotificationPoliciesUpdateANotificationPolicyResponse4XxResult copyWith({AaaUuid Function()? id}) { return NotificationPoliciesUpdateANotificationPolicyResponse4XxResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NotificationPoliciesUpdateANotificationPolicyResponse4XxResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'NotificationPoliciesUpdateANotificationPolicyResponse4XxResult(id: $id)'; } 
 }
