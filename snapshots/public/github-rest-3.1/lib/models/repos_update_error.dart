// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PATCH /repos/{owner}/{repo}`.
sealed class ReposUpdateError {const ReposUpdateError();

/// Parse the variant matching the response status code.
factory ReposUpdateError.parse(ApiResponse response) { return switch (response.statusCode) {
  307 => ReposUpdateError307.parse(response),
  403 => ReposUpdateError403.parse(response),
  404 => ReposUpdateError404.parse(response),
  422 => ReposUpdateError422.parse(response),
  _ => ReposUpdateError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `307` response.
@immutable final class ReposUpdateError307 extends ReposUpdateError {const ReposUpdateError307(this.data);

factory ReposUpdateError307.parse(ApiResponse response) { return ReposUpdateError307(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposUpdateError307 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposUpdateError307($data)'; } 
 }
/// The `403` response.
@immutable final class ReposUpdateError403 extends ReposUpdateError {const ReposUpdateError403(this.data);

factory ReposUpdateError403.parse(ApiResponse response) { return ReposUpdateError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposUpdateError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposUpdateError403($data)'; } 
 }
/// The `404` response.
@immutable final class ReposUpdateError404 extends ReposUpdateError {const ReposUpdateError404(this.data);

factory ReposUpdateError404.parse(ApiResponse response) { return ReposUpdateError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposUpdateError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposUpdateError404($data)'; } 
 }
/// The `422` response.
@immutable final class ReposUpdateError422 extends ReposUpdateError {const ReposUpdateError422(this.data);

factory ReposUpdateError422.parse(ApiResponse response) { return ReposUpdateError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposUpdateError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposUpdateError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposUpdateError$Unknown extends ReposUpdateError {const ReposUpdateError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposUpdateError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposUpdateError.unknown($statusCode)'; } 
 }
