// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account_load_balancer_monitor_groups_delete_monitor_group_response412.dart';import 'account_load_balancer_monitor_groups_delete_monitor_group_response4xx.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AccountLoadBalancerMonitorGroupsDeleteMonitorGroupError {const AccountLoadBalancerMonitorGroupsDeleteMonitorGroupError();

/// Decodes the payload for its declared status and content type.
static AccountLoadBalancerMonitorGroupsDeleteMonitorGroupError parse(ApiResponse response) {switch (response.statusCode) {
case >= 400 && < 412 || >= 413 && < 500:
final json = jsonDecode(response.body);
return AccountLoadBalancerMonitorGroupsDeleteMonitorGroupError4xx(AccountLoadBalancerMonitorGroupsDeleteMonitorGroupResponse4xx.fromJson(json as Map<String, dynamic>));
case 412:
final json = jsonDecode(response.body);
return AccountLoadBalancerMonitorGroupsDeleteMonitorGroupError412(AccountLoadBalancerMonitorGroupsDeleteMonitorGroupResponse412.fromJson(json as Map<String, dynamic>));
default:
return AccountLoadBalancerMonitorGroupsDeleteMonitorGroupErrorUnknown(response);
}
}
}
/// Response for 4xx (application/json).
final class AccountLoadBalancerMonitorGroupsDeleteMonitorGroupError4xx extends AccountLoadBalancerMonitorGroupsDeleteMonitorGroupError {const AccountLoadBalancerMonitorGroupsDeleteMonitorGroupError4xx(this.data);

/// The decoded response payload.
final AccountLoadBalancerMonitorGroupsDeleteMonitorGroupResponse4xx data;

}
/// Response for 412 (application/json).
final class AccountLoadBalancerMonitorGroupsDeleteMonitorGroupError412 extends AccountLoadBalancerMonitorGroupsDeleteMonitorGroupError {const AccountLoadBalancerMonitorGroupsDeleteMonitorGroupError412(this.data);

/// The decoded response payload.
final AccountLoadBalancerMonitorGroupsDeleteMonitorGroupResponse412 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class AccountLoadBalancerMonitorGroupsDeleteMonitorGroupErrorUnknown extends AccountLoadBalancerMonitorGroupsDeleteMonitorGroupError {const AccountLoadBalancerMonitorGroupsDeleteMonitorGroupErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
