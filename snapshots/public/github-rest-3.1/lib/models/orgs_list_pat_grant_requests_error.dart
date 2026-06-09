// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `GET /orgs/{org}/personal-access-token-requests`.
sealed class OrgsListPatGrantRequestsError {const OrgsListPatGrantRequestsError();

/// Parse the variant matching the response status code.
factory OrgsListPatGrantRequestsError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => OrgsListPatGrantRequestsError403.parse(response),
  404 => OrgsListPatGrantRequestsError404.parse(response),
  422 => OrgsListPatGrantRequestsError422.parse(response),
  500 => OrgsListPatGrantRequestsError500.parse(response),
  _ => OrgsListPatGrantRequestsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class OrgsListPatGrantRequestsError403 extends OrgsListPatGrantRequestsError {const OrgsListPatGrantRequestsError403(this.data);

factory OrgsListPatGrantRequestsError403.parse(ApiResponse response) { return OrgsListPatGrantRequestsError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsListPatGrantRequestsError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsListPatGrantRequestsError403($data)'; } 
 }
/// The `404` response.
@immutable final class OrgsListPatGrantRequestsError404 extends OrgsListPatGrantRequestsError {const OrgsListPatGrantRequestsError404(this.data);

factory OrgsListPatGrantRequestsError404.parse(ApiResponse response) { return OrgsListPatGrantRequestsError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsListPatGrantRequestsError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsListPatGrantRequestsError404($data)'; } 
 }
/// The `422` response.
@immutable final class OrgsListPatGrantRequestsError422 extends OrgsListPatGrantRequestsError {const OrgsListPatGrantRequestsError422(this.data);

factory OrgsListPatGrantRequestsError422.parse(ApiResponse response) { return OrgsListPatGrantRequestsError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsListPatGrantRequestsError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsListPatGrantRequestsError422($data)'; } 
 }
/// The `500` response.
@immutable final class OrgsListPatGrantRequestsError500 extends OrgsListPatGrantRequestsError {const OrgsListPatGrantRequestsError500(this.data);

factory OrgsListPatGrantRequestsError500.parse(ApiResponse response) { return OrgsListPatGrantRequestsError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsListPatGrantRequestsError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsListPatGrantRequestsError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class OrgsListPatGrantRequestsError$Unknown extends OrgsListPatGrantRequestsError {const OrgsListPatGrantRequestsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsListPatGrantRequestsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'OrgsListPatGrantRequestsError.unknown($statusCode)'; } 
 }
