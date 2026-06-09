// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/marketplace_purchases/stubbed`.
sealed class AppsListSubscriptionsForAuthenticatedUserStubbedError {const AppsListSubscriptionsForAuthenticatedUserStubbedError();

/// Parse the variant matching the response status code.
factory AppsListSubscriptionsForAuthenticatedUserStubbedError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => AppsListSubscriptionsForAuthenticatedUserStubbedError304.parse(response),
  401 => AppsListSubscriptionsForAuthenticatedUserStubbedError401.parse(response),
  _ => AppsListSubscriptionsForAuthenticatedUserStubbedError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class AppsListSubscriptionsForAuthenticatedUserStubbedError304 extends AppsListSubscriptionsForAuthenticatedUserStubbedError {const AppsListSubscriptionsForAuthenticatedUserStubbedError304();

factory AppsListSubscriptionsForAuthenticatedUserStubbedError304.parse(ApiResponse _) { return const AppsListSubscriptionsForAuthenticatedUserStubbedError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is AppsListSubscriptionsForAuthenticatedUserStubbedError304; } 
@override int get hashCode { return (AppsListSubscriptionsForAuthenticatedUserStubbedError304).hashCode; } 
@override String toString() { return 'AppsListSubscriptionsForAuthenticatedUserStubbedError304()'; } 
 }
/// The `401` response.
@immutable final class AppsListSubscriptionsForAuthenticatedUserStubbedError401 extends AppsListSubscriptionsForAuthenticatedUserStubbedError {const AppsListSubscriptionsForAuthenticatedUserStubbedError401(this.data);

factory AppsListSubscriptionsForAuthenticatedUserStubbedError401.parse(ApiResponse response) { return AppsListSubscriptionsForAuthenticatedUserStubbedError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsListSubscriptionsForAuthenticatedUserStubbedError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsListSubscriptionsForAuthenticatedUserStubbedError401($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AppsListSubscriptionsForAuthenticatedUserStubbedError$Unknown extends AppsListSubscriptionsForAuthenticatedUserStubbedError {const AppsListSubscriptionsForAuthenticatedUserStubbedError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsListSubscriptionsForAuthenticatedUserStubbedError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AppsListSubscriptionsForAuthenticatedUserStubbedError.unknown($statusCode)'; } 
 }
