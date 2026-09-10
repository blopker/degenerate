// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AppsGetSubscriptionPlanForAccountStubbedError {const AppsGetSubscriptionPlanForAccountStubbedError();

/// Decodes the payload for its declared status and content type.
static AppsGetSubscriptionPlanForAccountStubbedError parse(ApiResponse response) { switch (response.statusCode) {
case 401:
final json = jsonDecode(response.body);
return AppsGetSubscriptionPlanForAccountStubbedError401(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
return const AppsGetSubscriptionPlanForAccountStubbedError404();
default:
return AppsGetSubscriptionPlanForAccountStubbedErrorUnknown(response);
}
 } 
 }
/// Response for 401 (application/json).
final class AppsGetSubscriptionPlanForAccountStubbedError401 extends AppsGetSubscriptionPlanForAccountStubbedError {const AppsGetSubscriptionPlanForAccountStubbedError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404.
final class AppsGetSubscriptionPlanForAccountStubbedError404 extends AppsGetSubscriptionPlanForAccountStubbedError {const AppsGetSubscriptionPlanForAccountStubbedError404();

 }
/// An undeclared status. The complete response is retained for manual handling.
final class AppsGetSubscriptionPlanForAccountStubbedErrorUnknown extends AppsGetSubscriptionPlanForAccountStubbedError {const AppsGetSubscriptionPlanForAccountStubbedErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
