// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account_load_balancer_monitor_groups_update_monitor_group_response412.dart';import 'account_load_balancer_monitor_groups_update_monitor_group_response4xx.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AccountLoadBalancerMonitorGroupsUpdateMonitorGroupError {const AccountLoadBalancerMonitorGroupsUpdateMonitorGroupError();

/// Decodes the payload for its declared status and content type.
static AccountLoadBalancerMonitorGroupsUpdateMonitorGroupError parse(ApiResponse response) {switch (response.statusCode) {
case >= 400 && < 412 || >= 413 && < 500:
final json = jsonDecode(response.body);
return  AccountLoadBalancerMonitorGroupsUpdateMonitorGroupError4xx(AccountLoadBalancerMonitorGroupsUpdateMonitorGroupResponse4xx.fromJson(json as Map<String, dynamic>));case 412:
final json = jsonDecode(response.body);
return  AccountLoadBalancerMonitorGroupsUpdateMonitorGroupError412(AccountLoadBalancerMonitorGroupsUpdateMonitorGroupResponse412.fromJson(json as Map<String, dynamic>));default:
return  AccountLoadBalancerMonitorGroupsUpdateMonitorGroupErrorUnknown(response); }}
}
/// Response for 4xx (application/json).
final class AccountLoadBalancerMonitorGroupsUpdateMonitorGroupError4xx extends AccountLoadBalancerMonitorGroupsUpdateMonitorGroupError {const AccountLoadBalancerMonitorGroupsUpdateMonitorGroupError4xx(this.data);

/// The decoded response payload.
final AccountLoadBalancerMonitorGroupsUpdateMonitorGroupResponse4xx data;

}
/// Response for 412 (application/json).
final class AccountLoadBalancerMonitorGroupsUpdateMonitorGroupError412 extends AccountLoadBalancerMonitorGroupsUpdateMonitorGroupError {const AccountLoadBalancerMonitorGroupsUpdateMonitorGroupError412(this.data);

/// The decoded response payload.
final AccountLoadBalancerMonitorGroupsUpdateMonitorGroupResponse412 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class AccountLoadBalancerMonitorGroupsUpdateMonitorGroupErrorUnknown extends AccountLoadBalancerMonitorGroupsUpdateMonitorGroupError {const AccountLoadBalancerMonitorGroupsUpdateMonitorGroupErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
