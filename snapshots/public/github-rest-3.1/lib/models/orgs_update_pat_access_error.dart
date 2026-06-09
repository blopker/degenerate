// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /orgs/{org}/personal-access-tokens/{pat_id}`.
sealed class OrgsUpdatePatAccessError {const OrgsUpdatePatAccessError();

/// Parse the variant matching the response status code.
factory OrgsUpdatePatAccessError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => OrgsUpdatePatAccessError403.parse(response),
  404 => OrgsUpdatePatAccessError404.parse(response),
  422 => OrgsUpdatePatAccessError422.parse(response),
  500 => OrgsUpdatePatAccessError500.parse(response),
  _ => OrgsUpdatePatAccessError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class OrgsUpdatePatAccessError403 extends OrgsUpdatePatAccessError {const OrgsUpdatePatAccessError403(this.data);

factory OrgsUpdatePatAccessError403.parse(ApiResponse response) { return OrgsUpdatePatAccessError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsUpdatePatAccessError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsUpdatePatAccessError403($data)'; } 
 }
/// The `404` response.
@immutable final class OrgsUpdatePatAccessError404 extends OrgsUpdatePatAccessError {const OrgsUpdatePatAccessError404(this.data);

factory OrgsUpdatePatAccessError404.parse(ApiResponse response) { return OrgsUpdatePatAccessError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsUpdatePatAccessError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsUpdatePatAccessError404($data)'; } 
 }
/// The `422` response.
@immutable final class OrgsUpdatePatAccessError422 extends OrgsUpdatePatAccessError {const OrgsUpdatePatAccessError422(this.data);

factory OrgsUpdatePatAccessError422.parse(ApiResponse response) { return OrgsUpdatePatAccessError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsUpdatePatAccessError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsUpdatePatAccessError422($data)'; } 
 }
/// The `500` response.
@immutable final class OrgsUpdatePatAccessError500 extends OrgsUpdatePatAccessError {const OrgsUpdatePatAccessError500(this.data);

factory OrgsUpdatePatAccessError500.parse(ApiResponse response) { return OrgsUpdatePatAccessError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsUpdatePatAccessError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsUpdatePatAccessError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class OrgsUpdatePatAccessError$Unknown extends OrgsUpdatePatAccessError {const OrgsUpdatePatAccessError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsUpdatePatAccessError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'OrgsUpdatePatAccessError.unknown($statusCode)'; } 
 }
