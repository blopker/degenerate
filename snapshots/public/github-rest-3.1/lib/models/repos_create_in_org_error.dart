// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /orgs/{org}/repos`.
sealed class ReposCreateInOrgError {const ReposCreateInOrgError();

/// Parse the variant matching the response status code.
factory ReposCreateInOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => ReposCreateInOrgError403.parse(response),
  422 => ReposCreateInOrgError422.parse(response),
  _ => ReposCreateInOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class ReposCreateInOrgError403 extends ReposCreateInOrgError {const ReposCreateInOrgError403(this.data);

factory ReposCreateInOrgError403.parse(ApiResponse response) { return ReposCreateInOrgError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateInOrgError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateInOrgError403($data)'; } 
 }
/// The `422` response.
@immutable final class ReposCreateInOrgError422 extends ReposCreateInOrgError {const ReposCreateInOrgError422(this.data);

factory ReposCreateInOrgError422.parse(ApiResponse response) { return ReposCreateInOrgError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateInOrgError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateInOrgError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposCreateInOrgError$Unknown extends ReposCreateInOrgError {const ReposCreateInOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateInOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposCreateInOrgError.unknown($statusCode)'; } 
 }
