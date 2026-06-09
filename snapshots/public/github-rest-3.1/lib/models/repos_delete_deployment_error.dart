// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error responses of `DELETE /repos/{owner}/{repo}/deployments/{deployment_id}`.
sealed class ReposDeleteDeploymentError {const ReposDeleteDeploymentError();

/// Parse the variant matching the response status code.
factory ReposDeleteDeploymentError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ReposDeleteDeploymentError404.parse(response),
  422 => ReposDeleteDeploymentError422.parse(response),
  _ => ReposDeleteDeploymentError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ReposDeleteDeploymentError404 extends ReposDeleteDeploymentError {const ReposDeleteDeploymentError404(this.data);

factory ReposDeleteDeploymentError404.parse(ApiResponse response) { return ReposDeleteDeploymentError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposDeleteDeploymentError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposDeleteDeploymentError404($data)'; } 
 }
/// The `422` response.
@immutable final class ReposDeleteDeploymentError422 extends ReposDeleteDeploymentError {const ReposDeleteDeploymentError422(this.data);

factory ReposDeleteDeploymentError422.parse(ApiResponse response) { return ReposDeleteDeploymentError422(ValidationErrorSimple.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationErrorSimple data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposDeleteDeploymentError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposDeleteDeploymentError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposDeleteDeploymentError$Unknown extends ReposDeleteDeploymentError {const ReposDeleteDeploymentError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposDeleteDeploymentError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposDeleteDeploymentError.unknown($statusCode)'; } 
 }
