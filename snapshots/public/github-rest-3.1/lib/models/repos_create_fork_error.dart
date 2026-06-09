// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/forks`.
sealed class ReposCreateForkError {const ReposCreateForkError();

/// Parse the variant matching the response status code.
factory ReposCreateForkError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => ReposCreateForkError400.parse(response),
  403 => ReposCreateForkError403.parse(response),
  404 => ReposCreateForkError404.parse(response),
  422 => ReposCreateForkError422.parse(response),
  _ => ReposCreateForkError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class ReposCreateForkError400 extends ReposCreateForkError {const ReposCreateForkError400(this.data);

factory ReposCreateForkError400.parse(ApiResponse response) { return ReposCreateForkError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateForkError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateForkError400($data)'; } 
 }
/// The `403` response.
@immutable final class ReposCreateForkError403 extends ReposCreateForkError {const ReposCreateForkError403(this.data);

factory ReposCreateForkError403.parse(ApiResponse response) { return ReposCreateForkError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateForkError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateForkError403($data)'; } 
 }
/// The `404` response.
@immutable final class ReposCreateForkError404 extends ReposCreateForkError {const ReposCreateForkError404(this.data);

factory ReposCreateForkError404.parse(ApiResponse response) { return ReposCreateForkError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateForkError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateForkError404($data)'; } 
 }
/// The `422` response.
@immutable final class ReposCreateForkError422 extends ReposCreateForkError {const ReposCreateForkError422(this.data);

factory ReposCreateForkError422.parse(ApiResponse response) { return ReposCreateForkError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateForkError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateForkError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposCreateForkError$Unknown extends ReposCreateForkError {const ReposCreateForkError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateForkError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposCreateForkError.unknown($statusCode)'; } 
 }
