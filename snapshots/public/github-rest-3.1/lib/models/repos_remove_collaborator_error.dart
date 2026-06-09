// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `DELETE /repos/{owner}/{repo}/collaborators/{username}`.
sealed class ReposRemoveCollaboratorError {const ReposRemoveCollaboratorError();

/// Parse the variant matching the response status code.
factory ReposRemoveCollaboratorError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => ReposRemoveCollaboratorError403.parse(response),
  422 => ReposRemoveCollaboratorError422.parse(response),
  _ => ReposRemoveCollaboratorError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class ReposRemoveCollaboratorError403 extends ReposRemoveCollaboratorError {const ReposRemoveCollaboratorError403(this.data);

factory ReposRemoveCollaboratorError403.parse(ApiResponse response) { return ReposRemoveCollaboratorError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposRemoveCollaboratorError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposRemoveCollaboratorError403($data)'; } 
 }
/// The `422` response.
@immutable final class ReposRemoveCollaboratorError422 extends ReposRemoveCollaboratorError {const ReposRemoveCollaboratorError422(this.data);

factory ReposRemoveCollaboratorError422.parse(ApiResponse response) { return ReposRemoveCollaboratorError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposRemoveCollaboratorError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposRemoveCollaboratorError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposRemoveCollaboratorError$Unknown extends ReposRemoveCollaboratorError {const ReposRemoveCollaboratorError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposRemoveCollaboratorError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposRemoveCollaboratorError.unknown($statusCode)'; } 
 }
