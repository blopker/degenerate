// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/releases`.
sealed class ReposCreateReleaseError {const ReposCreateReleaseError();

/// Parse the variant matching the response status code.
factory ReposCreateReleaseError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ReposCreateReleaseError404.parse(response),
  422 => ReposCreateReleaseError422.parse(response),
  _ => ReposCreateReleaseError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ReposCreateReleaseError404 extends ReposCreateReleaseError {const ReposCreateReleaseError404(this.data);

factory ReposCreateReleaseError404.parse(ApiResponse response) { return ReposCreateReleaseError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateReleaseError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateReleaseError404($data)'; } 
 }
/// The `422` response.
@immutable final class ReposCreateReleaseError422 extends ReposCreateReleaseError {const ReposCreateReleaseError422(this.data);

factory ReposCreateReleaseError422.parse(ApiResponse response) { return ReposCreateReleaseError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateReleaseError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateReleaseError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposCreateReleaseError$Unknown extends ReposCreateReleaseError {const ReposCreateReleaseError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateReleaseError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposCreateReleaseError.unknown($statusCode)'; } 
 }
