// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PATCH /orgs/{org}/properties/values`.
sealed class OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError {const OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError();

/// Parse the variant matching the response status code.
factory OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError403.parse(response),
  404 => OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError404.parse(response),
  422 => OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError422.parse(response),
  _ => OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError403 extends OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError {const OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError403(this.data);

factory OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError403.parse(ApiResponse response) { return OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError403($data)'; } 
 }
/// The `404` response.
@immutable final class OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError404 extends OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError {const OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError404(this.data);

factory OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError404.parse(ApiResponse response) { return OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError404($data)'; } 
 }
/// The `422` response.
@immutable final class OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError422 extends OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError {const OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError422(this.data);

factory OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError422.parse(ApiResponse response) { return OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError$Unknown extends OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError {const OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError.unknown($statusCode)'; } 
 }
