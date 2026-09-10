// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account_load_balancer_monitor_groups_create_monitor_group_response412.dart';import 'account_load_balancer_monitor_groups_create_monitor_group_response4xx.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AccountLoadBalancerMonitorGroupsCreateMonitorGroupError {const AccountLoadBalancerMonitorGroupsCreateMonitorGroupError();

/// Decodes the payload for its declared status and content type.
static AccountLoadBalancerMonitorGroupsCreateMonitorGroupError parse(ApiResponse response) {switch (response.statusCode) {
case >= 400 && < 412 || >= 413 && < 500:
final json = jsonDecode(response.body);
return  AccountLoadBalancerMonitorGroupsCreateMonitorGroupError4xx(AccountLoadBalancerMonitorGroupsCreateMonitorGroupResponse4xx.fromJson(json as Map<String, dynamic>));case 412:
final json = jsonDecode(response.body);
return  AccountLoadBalancerMonitorGroupsCreateMonitorGroupError412(AccountLoadBalancerMonitorGroupsCreateMonitorGroupResponse412.fromJson(json as Map<String, dynamic>));default:
return  AccountLoadBalancerMonitorGroupsCreateMonitorGroupErrorUnknown(response); }}
}
/// Response for 4xx (application/json).
final class AccountLoadBalancerMonitorGroupsCreateMonitorGroupError4xx extends AccountLoadBalancerMonitorGroupsCreateMonitorGroupError {const AccountLoadBalancerMonitorGroupsCreateMonitorGroupError4xx(this.data);

/// The decoded response payload.
final AccountLoadBalancerMonitorGroupsCreateMonitorGroupResponse4xx data;

}
/// Response for 412 (application/json).
final class AccountLoadBalancerMonitorGroupsCreateMonitorGroupError412 extends AccountLoadBalancerMonitorGroupsCreateMonitorGroupError {const AccountLoadBalancerMonitorGroupsCreateMonitorGroupError412(this.data);

/// The decoded response payload.
final AccountLoadBalancerMonitorGroupsCreateMonitorGroupResponse412 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class AccountLoadBalancerMonitorGroupsCreateMonitorGroupErrorUnknown extends AccountLoadBalancerMonitorGroupsCreateMonitorGroupError {const AccountLoadBalancerMonitorGroupsCreateMonitorGroupErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
