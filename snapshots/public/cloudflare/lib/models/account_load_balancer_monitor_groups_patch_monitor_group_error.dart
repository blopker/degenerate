// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account_load_balancer_monitor_groups_patch_monitor_group_response412.dart';import 'account_load_balancer_monitor_groups_patch_monitor_group_response4xx.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AccountLoadBalancerMonitorGroupsPatchMonitorGroupError {const AccountLoadBalancerMonitorGroupsPatchMonitorGroupError();

/// Decodes the payload for its declared status and content type.
static AccountLoadBalancerMonitorGroupsPatchMonitorGroupError parse(ApiResponse response) {switch (response.statusCode) {
case >= 400 && < 412 || >= 413 && < 500:
final json = jsonDecode(response.body);
return  AccountLoadBalancerMonitorGroupsPatchMonitorGroupError4xx(AccountLoadBalancerMonitorGroupsPatchMonitorGroupResponse4xx.fromJson(json as Map<String, dynamic>));case 412:
final json = jsonDecode(response.body);
return  AccountLoadBalancerMonitorGroupsPatchMonitorGroupError412(AccountLoadBalancerMonitorGroupsPatchMonitorGroupResponse412.fromJson(json as Map<String, dynamic>));default:
return  AccountLoadBalancerMonitorGroupsPatchMonitorGroupErrorUnknown(response); }}
}
/// Response for 4xx (application/json).
final class AccountLoadBalancerMonitorGroupsPatchMonitorGroupError4xx extends AccountLoadBalancerMonitorGroupsPatchMonitorGroupError {const AccountLoadBalancerMonitorGroupsPatchMonitorGroupError4xx(this.data);

/// The decoded response payload.
final AccountLoadBalancerMonitorGroupsPatchMonitorGroupResponse4xx data;

}
/// Response for 412 (application/json).
final class AccountLoadBalancerMonitorGroupsPatchMonitorGroupError412 extends AccountLoadBalancerMonitorGroupsPatchMonitorGroupError {const AccountLoadBalancerMonitorGroupsPatchMonitorGroupError412(this.data);

/// The decoded response payload.
final AccountLoadBalancerMonitorGroupsPatchMonitorGroupResponse412 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class AccountLoadBalancerMonitorGroupsPatchMonitorGroupErrorUnknown extends AccountLoadBalancerMonitorGroupsPatchMonitorGroupError {const AccountLoadBalancerMonitorGroupsPatchMonitorGroupErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
