// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PATCH /repos/{owner}/{repo}/properties/values`.
sealed class ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError {const ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError();

/// Parse the variant matching the response status code.
factory ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError403.parse(response),
  404 => ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError404.parse(response),
  422 => ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError422.parse(response),
  _ => ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError403 extends ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError {const ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError403(this.data);

factory ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError403.parse(ApiResponse response) { return ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError403($data)'; } 
 }
/// The `404` response.
@immutable final class ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError404 extends ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError {const ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError404(this.data);

factory ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError404.parse(ApiResponse response) { return ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError404($data)'; } 
 }
/// The `422` response.
@immutable final class ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError422 extends ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError {const ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError422(this.data);

factory ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError422.parse(ApiResponse response) { return ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError$Unknown extends ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError {const ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError.unknown($statusCode)'; } 
 }
