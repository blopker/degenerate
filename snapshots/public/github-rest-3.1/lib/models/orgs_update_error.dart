// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'orgs_update_response422.dart';import 'validation_error.dart';import 'validation_error_simple.dart';/// Error responses of `PATCH /orgs/{org}`.
sealed class OrgsUpdateError {const OrgsUpdateError();

/// Parse the variant matching the response status code.
factory OrgsUpdateError.parse(ApiResponse response) { return switch (response.statusCode) {
  409 => OrgsUpdateError409.parse(response),
  422 => OrgsUpdateError422.parse(response),
  _ => OrgsUpdateError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `409` response.
@immutable final class OrgsUpdateError409 extends OrgsUpdateError {const OrgsUpdateError409(this.data);

factory OrgsUpdateError409.parse(ApiResponse response) { return OrgsUpdateError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsUpdateError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsUpdateError409($data)'; } 
 }
/// The `422` response.
@immutable final class OrgsUpdateError422 extends OrgsUpdateError {const OrgsUpdateError422(this.data);

factory OrgsUpdateError422.parse(ApiResponse response) { return OrgsUpdateError422(OneOf2.parse(jsonDecode(response.body), fromA: (v) => ValidationError.fromJson(v as Map<String, dynamic>), fromB: (v) => ValidationErrorSimple.fromJson(v as Map<String, dynamic>),)); }

final OrgsUpdateResponse422 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsUpdateError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsUpdateError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class OrgsUpdateError$Unknown extends OrgsUpdateError {const OrgsUpdateError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsUpdateError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'OrgsUpdateError.unknown($statusCode)'; } 
 }
