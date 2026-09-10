// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'deployment.dart';import 'repos_create_deployment_response202.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class ReposCreateDeploymentSuccess {const ReposCreateDeploymentSuccess();

/// Decodes the payload for its declared status and content type.
static ReposCreateDeploymentSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 201:
final json = jsonDecode(response.body);
return ReposCreateDeploymentSuccess201(Deployment.fromJson(json as Map<String, dynamic>));
case 202:
final json = jsonDecode(response.body);
return ReposCreateDeploymentSuccess202(ReposCreateDeploymentResponse202.fromJson(json as Map<String, dynamic>));
default:
return ReposCreateDeploymentSuccessUnknown(response);
}
}
}
/// Response for 201 (application/json).
final class ReposCreateDeploymentSuccess201 extends ReposCreateDeploymentSuccess {const ReposCreateDeploymentSuccess201(this.data);

/// The decoded response payload.
final Deployment data;

}
/// Response for 202 (application/json).
final class ReposCreateDeploymentSuccess202 extends ReposCreateDeploymentSuccess {const ReposCreateDeploymentSuccess202(this.data);

/// The decoded response payload.
final ReposCreateDeploymentResponse202 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposCreateDeploymentSuccessUnknown extends ReposCreateDeploymentSuccess {const ReposCreateDeploymentSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
