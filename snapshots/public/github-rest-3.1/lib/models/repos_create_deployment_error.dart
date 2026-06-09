// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'validation_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/deployments`.
sealed class ReposCreateDeploymentError {const ReposCreateDeploymentError();

/// Parse the variant matching the response status code.
factory ReposCreateDeploymentError.parse(ApiResponse response) { return switch (response.statusCode) {
  409 => ReposCreateDeploymentError409.parse(response),
  422 => ReposCreateDeploymentError422.parse(response),
  _ => ReposCreateDeploymentError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `409` response.
@immutable final class ReposCreateDeploymentError409 extends ReposCreateDeploymentError {const ReposCreateDeploymentError409();

factory ReposCreateDeploymentError409.parse(ApiResponse _) { return const ReposCreateDeploymentError409(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ReposCreateDeploymentError409; } 
@override int get hashCode { return (ReposCreateDeploymentError409).hashCode; } 
@override String toString() { return 'ReposCreateDeploymentError409()'; } 
 }
/// The `422` response.
@immutable final class ReposCreateDeploymentError422 extends ReposCreateDeploymentError {const ReposCreateDeploymentError422(this.data);

factory ReposCreateDeploymentError422.parse(ApiResponse response) { return ReposCreateDeploymentError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateDeploymentError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateDeploymentError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposCreateDeploymentError$Unknown extends ReposCreateDeploymentError {const ReposCreateDeploymentError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateDeploymentError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposCreateDeploymentError.unknown($statusCode)'; } 
 }
