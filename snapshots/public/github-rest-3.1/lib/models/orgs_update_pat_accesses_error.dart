// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /orgs/{org}/personal-access-tokens`.
sealed class OrgsUpdatePatAccessesError {const OrgsUpdatePatAccessesError();

/// Parse the variant matching the response status code.
factory OrgsUpdatePatAccessesError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => OrgsUpdatePatAccessesError403.parse(response),
  404 => OrgsUpdatePatAccessesError404.parse(response),
  422 => OrgsUpdatePatAccessesError422.parse(response),
  500 => OrgsUpdatePatAccessesError500.parse(response),
  _ => OrgsUpdatePatAccessesError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class OrgsUpdatePatAccessesError403 extends OrgsUpdatePatAccessesError {const OrgsUpdatePatAccessesError403(this.data);

factory OrgsUpdatePatAccessesError403.parse(ApiResponse response) { return OrgsUpdatePatAccessesError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsUpdatePatAccessesError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsUpdatePatAccessesError403($data)'; } 
 }
/// The `404` response.
@immutable final class OrgsUpdatePatAccessesError404 extends OrgsUpdatePatAccessesError {const OrgsUpdatePatAccessesError404(this.data);

factory OrgsUpdatePatAccessesError404.parse(ApiResponse response) { return OrgsUpdatePatAccessesError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsUpdatePatAccessesError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsUpdatePatAccessesError404($data)'; } 
 }
/// The `422` response.
@immutable final class OrgsUpdatePatAccessesError422 extends OrgsUpdatePatAccessesError {const OrgsUpdatePatAccessesError422(this.data);

factory OrgsUpdatePatAccessesError422.parse(ApiResponse response) { return OrgsUpdatePatAccessesError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsUpdatePatAccessesError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsUpdatePatAccessesError422($data)'; } 
 }
/// The `500` response.
@immutable final class OrgsUpdatePatAccessesError500 extends OrgsUpdatePatAccessesError {const OrgsUpdatePatAccessesError500(this.data);

factory OrgsUpdatePatAccessesError500.parse(ApiResponse response) { return OrgsUpdatePatAccessesError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsUpdatePatAccessesError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsUpdatePatAccessesError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class OrgsUpdatePatAccessesError$Unknown extends OrgsUpdatePatAccessesError {const OrgsUpdatePatAccessesError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsUpdatePatAccessesError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'OrgsUpdatePatAccessesError.unknown($statusCode)'; } 
 }
