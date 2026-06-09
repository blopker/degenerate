// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /applications/{client_id}/token`.
sealed class AppsCheckTokenError {const AppsCheckTokenError();

/// Parse the variant matching the response status code.
factory AppsCheckTokenError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => AppsCheckTokenError404.parse(response),
  422 => AppsCheckTokenError422.parse(response),
  _ => AppsCheckTokenError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class AppsCheckTokenError404 extends AppsCheckTokenError {const AppsCheckTokenError404(this.data);

factory AppsCheckTokenError404.parse(ApiResponse response) { return AppsCheckTokenError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsCheckTokenError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsCheckTokenError404($data)'; } 
 }
/// The `422` response.
@immutable final class AppsCheckTokenError422 extends AppsCheckTokenError {const AppsCheckTokenError422(this.data);

factory AppsCheckTokenError422.parse(ApiResponse response) { return AppsCheckTokenError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsCheckTokenError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsCheckTokenError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AppsCheckTokenError$Unknown extends AppsCheckTokenError {const AppsCheckTokenError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsCheckTokenError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AppsCheckTokenError.unknown($statusCode)'; } 
 }
