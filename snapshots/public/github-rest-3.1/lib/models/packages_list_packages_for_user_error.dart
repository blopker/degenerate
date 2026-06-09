// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /users/{username}/packages`.
sealed class PackagesListPackagesForUserError {const PackagesListPackagesForUserError();

/// Parse the variant matching the response status code.
factory PackagesListPackagesForUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => PackagesListPackagesForUserError400.parse(response),
  401 => PackagesListPackagesForUserError401.parse(response),
  403 => PackagesListPackagesForUserError403.parse(response),
  _ => PackagesListPackagesForUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class PackagesListPackagesForUserError400 extends PackagesListPackagesForUserError {const PackagesListPackagesForUserError400();

factory PackagesListPackagesForUserError400.parse(ApiResponse _) { return const PackagesListPackagesForUserError400(); }

@override bool operator ==(Object other) { return identical(this, other) || other is PackagesListPackagesForUserError400; } 
@override int get hashCode { return (PackagesListPackagesForUserError400).hashCode; } 
@override String toString() { return 'PackagesListPackagesForUserError400()'; } 
 }
/// The `401` response.
@immutable final class PackagesListPackagesForUserError401 extends PackagesListPackagesForUserError {const PackagesListPackagesForUserError401(this.data);

factory PackagesListPackagesForUserError401.parse(ApiResponse response) { return PackagesListPackagesForUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PackagesListPackagesForUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PackagesListPackagesForUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class PackagesListPackagesForUserError403 extends PackagesListPackagesForUserError {const PackagesListPackagesForUserError403(this.data);

factory PackagesListPackagesForUserError403.parse(ApiResponse response) { return PackagesListPackagesForUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PackagesListPackagesForUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PackagesListPackagesForUserError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class PackagesListPackagesForUserError$Unknown extends PackagesListPackagesForUserError {const PackagesListPackagesForUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PackagesListPackagesForUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'PackagesListPackagesForUserError.unknown($statusCode)'; } 
 }
