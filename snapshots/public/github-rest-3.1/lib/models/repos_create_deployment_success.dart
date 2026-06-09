// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'deployment.dart';import 'repos_create_deployment_response202.dart';/// Success responses of `POST /repos/{owner}/{repo}/deployments`.
sealed class ReposCreateDeploymentSuccess {const ReposCreateDeploymentSuccess();

/// Parse the variant matching the response status code.
factory ReposCreateDeploymentSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  201 => ReposCreateDeploymentSuccess201.parse(response),
  202 => ReposCreateDeploymentSuccess202.parse(response),
  _ => ReposCreateDeploymentSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `201` response.
@immutable final class ReposCreateDeploymentSuccess201 extends ReposCreateDeploymentSuccess {const ReposCreateDeploymentSuccess201(this.data);

factory ReposCreateDeploymentSuccess201.parse(ApiResponse response) { return ReposCreateDeploymentSuccess201(Deployment.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final Deployment data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateDeploymentSuccess201 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateDeploymentSuccess201($data)'; } 
 }
/// The `202` response.
@immutable final class ReposCreateDeploymentSuccess202 extends ReposCreateDeploymentSuccess {const ReposCreateDeploymentSuccess202(this.data);

factory ReposCreateDeploymentSuccess202.parse(ApiResponse response) { return ReposCreateDeploymentSuccess202(ReposCreateDeploymentResponse202.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ReposCreateDeploymentResponse202 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateDeploymentSuccess202 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateDeploymentSuccess202($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposCreateDeploymentSuccess$Unknown extends ReposCreateDeploymentSuccess {const ReposCreateDeploymentSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateDeploymentSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposCreateDeploymentSuccess.unknown($statusCode)'; } 
 }
