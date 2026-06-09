// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /orgs/{org}/packages`.
sealed class PackagesListPackagesForOrganizationError {const PackagesListPackagesForOrganizationError();

/// Parse the variant matching the response status code.
factory PackagesListPackagesForOrganizationError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => PackagesListPackagesForOrganizationError400.parse(response),
  401 => PackagesListPackagesForOrganizationError401.parse(response),
  403 => PackagesListPackagesForOrganizationError403.parse(response),
  _ => PackagesListPackagesForOrganizationError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class PackagesListPackagesForOrganizationError400 extends PackagesListPackagesForOrganizationError {const PackagesListPackagesForOrganizationError400();

factory PackagesListPackagesForOrganizationError400.parse(ApiResponse _) { return const PackagesListPackagesForOrganizationError400(); }

@override bool operator ==(Object other) { return identical(this, other) || other is PackagesListPackagesForOrganizationError400; } 
@override int get hashCode { return (PackagesListPackagesForOrganizationError400).hashCode; } 
@override String toString() { return 'PackagesListPackagesForOrganizationError400()'; } 
 }
/// The `401` response.
@immutable final class PackagesListPackagesForOrganizationError401 extends PackagesListPackagesForOrganizationError {const PackagesListPackagesForOrganizationError401(this.data);

factory PackagesListPackagesForOrganizationError401.parse(ApiResponse response) { return PackagesListPackagesForOrganizationError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PackagesListPackagesForOrganizationError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PackagesListPackagesForOrganizationError401($data)'; } 
 }
/// The `403` response.
@immutable final class PackagesListPackagesForOrganizationError403 extends PackagesListPackagesForOrganizationError {const PackagesListPackagesForOrganizationError403(this.data);

factory PackagesListPackagesForOrganizationError403.parse(ApiResponse response) { return PackagesListPackagesForOrganizationError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PackagesListPackagesForOrganizationError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PackagesListPackagesForOrganizationError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class PackagesListPackagesForOrganizationError$Unknown extends PackagesListPackagesForOrganizationError {const PackagesListPackagesForOrganizationError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PackagesListPackagesForOrganizationError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'PackagesListPackagesForOrganizationError.unknown($statusCode)'; } 
 }
