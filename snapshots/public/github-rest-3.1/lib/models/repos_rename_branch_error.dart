// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/branches/{branch}/rename`.
sealed class ReposRenameBranchError {const ReposRenameBranchError();

/// Parse the variant matching the response status code.
factory ReposRenameBranchError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => ReposRenameBranchError403.parse(response),
  404 => ReposRenameBranchError404.parse(response),
  422 => ReposRenameBranchError422.parse(response),
  _ => ReposRenameBranchError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class ReposRenameBranchError403 extends ReposRenameBranchError {const ReposRenameBranchError403(this.data);

factory ReposRenameBranchError403.parse(ApiResponse response) { return ReposRenameBranchError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposRenameBranchError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposRenameBranchError403($data)'; } 
 }
/// The `404` response.
@immutable final class ReposRenameBranchError404 extends ReposRenameBranchError {const ReposRenameBranchError404(this.data);

factory ReposRenameBranchError404.parse(ApiResponse response) { return ReposRenameBranchError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposRenameBranchError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposRenameBranchError404($data)'; } 
 }
/// The `422` response.
@immutable final class ReposRenameBranchError422 extends ReposRenameBranchError {const ReposRenameBranchError422(this.data);

factory ReposRenameBranchError422.parse(ApiResponse response) { return ReposRenameBranchError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposRenameBranchError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposRenameBranchError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposRenameBranchError$Unknown extends ReposRenameBranchError {const ReposRenameBranchError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposRenameBranchError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposRenameBranchError.unknown($statusCode)'; } 
 }
