// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /marketplace_listing/stubbed/accounts/{account_id}`.
sealed class AppsGetSubscriptionPlanForAccountStubbedError {const AppsGetSubscriptionPlanForAccountStubbedError();

/// Parse the variant matching the response status code.
factory AppsGetSubscriptionPlanForAccountStubbedError.parse(ApiResponse response) { return switch (response.statusCode) {
  401 => AppsGetSubscriptionPlanForAccountStubbedError401.parse(response),
  404 => AppsGetSubscriptionPlanForAccountStubbedError404.parse(response),
  _ => AppsGetSubscriptionPlanForAccountStubbedError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `401` response.
@immutable final class AppsGetSubscriptionPlanForAccountStubbedError401 extends AppsGetSubscriptionPlanForAccountStubbedError {const AppsGetSubscriptionPlanForAccountStubbedError401(this.data);

factory AppsGetSubscriptionPlanForAccountStubbedError401.parse(ApiResponse response) { return AppsGetSubscriptionPlanForAccountStubbedError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsGetSubscriptionPlanForAccountStubbedError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsGetSubscriptionPlanForAccountStubbedError401($data)'; } 
 }
/// The `404` response.
@immutable final class AppsGetSubscriptionPlanForAccountStubbedError404 extends AppsGetSubscriptionPlanForAccountStubbedError {const AppsGetSubscriptionPlanForAccountStubbedError404();

factory AppsGetSubscriptionPlanForAccountStubbedError404.parse(ApiResponse _) { return const AppsGetSubscriptionPlanForAccountStubbedError404(); }

@override bool operator ==(Object other) { return identical(this, other) || other is AppsGetSubscriptionPlanForAccountStubbedError404; } 
@override int get hashCode { return (AppsGetSubscriptionPlanForAccountStubbedError404).hashCode; } 
@override String toString() { return 'AppsGetSubscriptionPlanForAccountStubbedError404()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AppsGetSubscriptionPlanForAccountStubbedError$Unknown extends AppsGetSubscriptionPlanForAccountStubbedError {const AppsGetSubscriptionPlanForAccountStubbedError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsGetSubscriptionPlanForAccountStubbedError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AppsGetSubscriptionPlanForAccountStubbedError.unknown($statusCode)'; } 
 }
