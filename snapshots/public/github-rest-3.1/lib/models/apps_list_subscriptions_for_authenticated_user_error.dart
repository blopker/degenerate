// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/marketplace_purchases`.
sealed class AppsListSubscriptionsForAuthenticatedUserError {const AppsListSubscriptionsForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory AppsListSubscriptionsForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => AppsListSubscriptionsForAuthenticatedUserError304.parse(response),
  401 => AppsListSubscriptionsForAuthenticatedUserError401.parse(response),
  404 => AppsListSubscriptionsForAuthenticatedUserError404.parse(response),
  _ => AppsListSubscriptionsForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class AppsListSubscriptionsForAuthenticatedUserError304 extends AppsListSubscriptionsForAuthenticatedUserError {const AppsListSubscriptionsForAuthenticatedUserError304();

factory AppsListSubscriptionsForAuthenticatedUserError304.parse(ApiResponse _) { return const AppsListSubscriptionsForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is AppsListSubscriptionsForAuthenticatedUserError304; } 
@override int get hashCode { return (AppsListSubscriptionsForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'AppsListSubscriptionsForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class AppsListSubscriptionsForAuthenticatedUserError401 extends AppsListSubscriptionsForAuthenticatedUserError {const AppsListSubscriptionsForAuthenticatedUserError401(this.data);

factory AppsListSubscriptionsForAuthenticatedUserError401.parse(ApiResponse response) { return AppsListSubscriptionsForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsListSubscriptionsForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsListSubscriptionsForAuthenticatedUserError401($data)'; } 
 }
/// The `404` response.
@immutable final class AppsListSubscriptionsForAuthenticatedUserError404 extends AppsListSubscriptionsForAuthenticatedUserError {const AppsListSubscriptionsForAuthenticatedUserError404(this.data);

factory AppsListSubscriptionsForAuthenticatedUserError404.parse(ApiResponse response) { return AppsListSubscriptionsForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsListSubscriptionsForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsListSubscriptionsForAuthenticatedUserError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AppsListSubscriptionsForAuthenticatedUserError$Unknown extends AppsListSubscriptionsForAuthenticatedUserError {const AppsListSubscriptionsForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsListSubscriptionsForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AppsListSubscriptionsForAuthenticatedUserError.unknown($statusCode)'; } 
 }
