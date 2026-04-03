// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_patch_pools_notification_email.dart';@immutable final class AccountLoadBalancerPoolsPatchPoolsRequest {const AccountLoadBalancerPoolsPatchPoolsRequest({this.notificationEmail});

factory AccountLoadBalancerPoolsPatchPoolsRequest.fromJson(Map<String, dynamic> json) { return AccountLoadBalancerPoolsPatchPoolsRequest(
  notificationEmail: json['notification_email'] != null ? LoadBalancingPatchPoolsNotificationEmail.fromJson(json['notification_email'] as String) : null,
); }

/// The email address to send health status notifications to. This field is now deprecated in favor of Cloudflare Notifications for Load Balancing, so only resetting this field with an empty string `""` is accepted.
final LoadBalancingPatchPoolsNotificationEmail? notificationEmail;

Map<String, dynamic> toJson() { return {
  if (notificationEmail != null) 'notification_email': notificationEmail?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'notification_email'}.contains(key)); } 
AccountLoadBalancerPoolsPatchPoolsRequest copyWith({LoadBalancingPatchPoolsNotificationEmail Function()? notificationEmail}) { return AccountLoadBalancerPoolsPatchPoolsRequest(
  notificationEmail: notificationEmail != null ? notificationEmail() : this.notificationEmail,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountLoadBalancerPoolsPatchPoolsRequest &&
          notificationEmail == other.notificationEmail; } 
@override int get hashCode { return notificationEmail.hashCode; } 
@override String toString() { return 'AccountLoadBalancerPoolsPatchPoolsRequest(notificationEmail: $notificationEmail)'; } 
 }
