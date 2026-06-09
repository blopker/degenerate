// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `GET /orgs/{org}/personal-access-tokens`.
sealed class OrgsListPatGrantsError {const OrgsListPatGrantsError();

/// Parse the variant matching the response status code.
factory OrgsListPatGrantsError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => OrgsListPatGrantsError403.parse(response),
  404 => OrgsListPatGrantsError404.parse(response),
  422 => OrgsListPatGrantsError422.parse(response),
  500 => OrgsListPatGrantsError500.parse(response),
  _ => OrgsListPatGrantsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class OrgsListPatGrantsError403 extends OrgsListPatGrantsError {const OrgsListPatGrantsError403(this.data);

factory OrgsListPatGrantsError403.parse(ApiResponse response) { return OrgsListPatGrantsError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsListPatGrantsError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsListPatGrantsError403($data)'; } 
 }
/// The `404` response.
@immutable final class OrgsListPatGrantsError404 extends OrgsListPatGrantsError {const OrgsListPatGrantsError404(this.data);

factory OrgsListPatGrantsError404.parse(ApiResponse response) { return OrgsListPatGrantsError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsListPatGrantsError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsListPatGrantsError404($data)'; } 
 }
/// The `422` response.
@immutable final class OrgsListPatGrantsError422 extends OrgsListPatGrantsError {const OrgsListPatGrantsError422(this.data);

factory OrgsListPatGrantsError422.parse(ApiResponse response) { return OrgsListPatGrantsError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsListPatGrantsError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsListPatGrantsError422($data)'; } 
 }
/// The `500` response.
@immutable final class OrgsListPatGrantsError500 extends OrgsListPatGrantsError {const OrgsListPatGrantsError500(this.data);

factory OrgsListPatGrantsError500.parse(ApiResponse response) { return OrgsListPatGrantsError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsListPatGrantsError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsListPatGrantsError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class OrgsListPatGrantsError$Unknown extends OrgsListPatGrantsError {const OrgsListPatGrantsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsListPatGrantsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'OrgsListPatGrantsError.unknown($statusCode)'; } 
 }
