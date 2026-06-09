// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `DELETE /repos/{owner}/{repo}/pages`.
sealed class ReposDeletePagesSiteError {const ReposDeletePagesSiteError();

/// Parse the variant matching the response status code.
factory ReposDeletePagesSiteError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ReposDeletePagesSiteError404.parse(response),
  409 => ReposDeletePagesSiteError409.parse(response),
  422 => ReposDeletePagesSiteError422.parse(response),
  _ => ReposDeletePagesSiteError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ReposDeletePagesSiteError404 extends ReposDeletePagesSiteError {const ReposDeletePagesSiteError404(this.data);

factory ReposDeletePagesSiteError404.parse(ApiResponse response) { return ReposDeletePagesSiteError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposDeletePagesSiteError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposDeletePagesSiteError404($data)'; } 
 }
/// The `409` response.
@immutable final class ReposDeletePagesSiteError409 extends ReposDeletePagesSiteError {const ReposDeletePagesSiteError409(this.data);

factory ReposDeletePagesSiteError409.parse(ApiResponse response) { return ReposDeletePagesSiteError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposDeletePagesSiteError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposDeletePagesSiteError409($data)'; } 
 }
/// The `422` response.
@immutable final class ReposDeletePagesSiteError422 extends ReposDeletePagesSiteError {const ReposDeletePagesSiteError422(this.data);

factory ReposDeletePagesSiteError422.parse(ApiResponse response) { return ReposDeletePagesSiteError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposDeletePagesSiteError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposDeletePagesSiteError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposDeletePagesSiteError$Unknown extends ReposDeletePagesSiteError {const ReposDeletePagesSiteError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposDeletePagesSiteError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposDeletePagesSiteError.unknown($statusCode)'; } 
 }
