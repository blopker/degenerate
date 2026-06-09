// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `GET /orgs/{org}/organization-roles/{role_id}`.
sealed class OrgsGetOrgRoleError {const OrgsGetOrgRoleError();

/// Parse the variant matching the response status code.
factory OrgsGetOrgRoleError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => OrgsGetOrgRoleError404.parse(response),
  422 => OrgsGetOrgRoleError422.parse(response),
  _ => OrgsGetOrgRoleError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class OrgsGetOrgRoleError404 extends OrgsGetOrgRoleError {const OrgsGetOrgRoleError404(this.data);

factory OrgsGetOrgRoleError404.parse(ApiResponse response) { return OrgsGetOrgRoleError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsGetOrgRoleError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsGetOrgRoleError404($data)'; } 
 }
/// The `422` response.
@immutable final class OrgsGetOrgRoleError422 extends OrgsGetOrgRoleError {const OrgsGetOrgRoleError422(this.data);

factory OrgsGetOrgRoleError422.parse(ApiResponse response) { return OrgsGetOrgRoleError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsGetOrgRoleError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsGetOrgRoleError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class OrgsGetOrgRoleError$Unknown extends OrgsGetOrgRoleError {const OrgsGetOrgRoleError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsGetOrgRoleError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'OrgsGetOrgRoleError.unknown($statusCode)'; } 
 }
