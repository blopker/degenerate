// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /installation/repositories`.
sealed class AppsListReposAccessibleToInstallationError {const AppsListReposAccessibleToInstallationError();

/// Parse the variant matching the response status code.
factory AppsListReposAccessibleToInstallationError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => AppsListReposAccessibleToInstallationError304.parse(response),
  401 => AppsListReposAccessibleToInstallationError401.parse(response),
  403 => AppsListReposAccessibleToInstallationError403.parse(response),
  _ => AppsListReposAccessibleToInstallationError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class AppsListReposAccessibleToInstallationError304 extends AppsListReposAccessibleToInstallationError {const AppsListReposAccessibleToInstallationError304();

factory AppsListReposAccessibleToInstallationError304.parse(ApiResponse _) { return const AppsListReposAccessibleToInstallationError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is AppsListReposAccessibleToInstallationError304; } 
@override int get hashCode { return (AppsListReposAccessibleToInstallationError304).hashCode; } 
@override String toString() { return 'AppsListReposAccessibleToInstallationError304()'; } 
 }
/// The `401` response.
@immutable final class AppsListReposAccessibleToInstallationError401 extends AppsListReposAccessibleToInstallationError {const AppsListReposAccessibleToInstallationError401(this.data);

factory AppsListReposAccessibleToInstallationError401.parse(ApiResponse response) { return AppsListReposAccessibleToInstallationError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsListReposAccessibleToInstallationError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsListReposAccessibleToInstallationError401($data)'; } 
 }
/// The `403` response.
@immutable final class AppsListReposAccessibleToInstallationError403 extends AppsListReposAccessibleToInstallationError {const AppsListReposAccessibleToInstallationError403(this.data);

factory AppsListReposAccessibleToInstallationError403.parse(ApiResponse response) { return AppsListReposAccessibleToInstallationError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsListReposAccessibleToInstallationError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsListReposAccessibleToInstallationError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AppsListReposAccessibleToInstallationError$Unknown extends AppsListReposAccessibleToInstallationError {const AppsListReposAccessibleToInstallationError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsListReposAccessibleToInstallationError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AppsListReposAccessibleToInstallationError.unknown($statusCode)'; } 
 }
