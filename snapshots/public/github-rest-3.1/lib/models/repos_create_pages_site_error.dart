// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/pages`.
sealed class ReposCreatePagesSiteError {const ReposCreatePagesSiteError();

/// Parse the variant matching the response status code.
factory ReposCreatePagesSiteError.parse(ApiResponse response) { return switch (response.statusCode) {
  409 => ReposCreatePagesSiteError409.parse(response),
  422 => ReposCreatePagesSiteError422.parse(response),
  _ => ReposCreatePagesSiteError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `409` response.
@immutable final class ReposCreatePagesSiteError409 extends ReposCreatePagesSiteError {const ReposCreatePagesSiteError409(this.data);

factory ReposCreatePagesSiteError409.parse(ApiResponse response) { return ReposCreatePagesSiteError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreatePagesSiteError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreatePagesSiteError409($data)'; } 
 }
/// The `422` response.
@immutable final class ReposCreatePagesSiteError422 extends ReposCreatePagesSiteError {const ReposCreatePagesSiteError422(this.data);

factory ReposCreatePagesSiteError422.parse(ApiResponse response) { return ReposCreatePagesSiteError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreatePagesSiteError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreatePagesSiteError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposCreatePagesSiteError$Unknown extends ReposCreatePagesSiteError {const ReposCreatePagesSiteError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreatePagesSiteError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposCreatePagesSiteError.unknown($statusCode)'; } 
 }
