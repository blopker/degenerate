// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/pages/deployments`.
sealed class ReposCreatePagesDeploymentError {const ReposCreatePagesDeploymentError();

/// Parse the variant matching the response status code.
factory ReposCreatePagesDeploymentError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => ReposCreatePagesDeploymentError400.parse(response),
  404 => ReposCreatePagesDeploymentError404.parse(response),
  422 => ReposCreatePagesDeploymentError422.parse(response),
  _ => ReposCreatePagesDeploymentError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class ReposCreatePagesDeploymentError400 extends ReposCreatePagesDeploymentError {const ReposCreatePagesDeploymentError400(this.data);

factory ReposCreatePagesDeploymentError400.parse(ApiResponse response) { return ReposCreatePagesDeploymentError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreatePagesDeploymentError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreatePagesDeploymentError400($data)'; } 
 }
/// The `404` response.
@immutable final class ReposCreatePagesDeploymentError404 extends ReposCreatePagesDeploymentError {const ReposCreatePagesDeploymentError404(this.data);

factory ReposCreatePagesDeploymentError404.parse(ApiResponse response) { return ReposCreatePagesDeploymentError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreatePagesDeploymentError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreatePagesDeploymentError404($data)'; } 
 }
/// The `422` response.
@immutable final class ReposCreatePagesDeploymentError422 extends ReposCreatePagesDeploymentError {const ReposCreatePagesDeploymentError422(this.data);

factory ReposCreatePagesDeploymentError422.parse(ApiResponse response) { return ReposCreatePagesDeploymentError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreatePagesDeploymentError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreatePagesDeploymentError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposCreatePagesDeploymentError$Unknown extends ReposCreatePagesDeploymentError {const ReposCreatePagesDeploymentError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreatePagesDeploymentError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposCreatePagesDeploymentError.unknown($statusCode)'; } 
 }
