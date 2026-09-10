// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_update_providers_response400.dart';import 'aig_config_update_providers_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AigConfigUpdateProvidersError {const AigConfigUpdateProvidersError();

/// Decodes the payload for its declared status and content type.
static AigConfigUpdateProvidersError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  AigConfigUpdateProvidersError400(AigConfigUpdateProvidersResponse400.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  AigConfigUpdateProvidersError404(AigConfigUpdateProvidersResponse404.fromJson(json as Map<String, dynamic>));default:
return  AigConfigUpdateProvidersErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class AigConfigUpdateProvidersError400 extends AigConfigUpdateProvidersError {const AigConfigUpdateProvidersError400(this.data);

/// The decoded response payload.
final AigConfigUpdateProvidersResponse400 data;

}
/// Response for 404 (application/json).
final class AigConfigUpdateProvidersError404 extends AigConfigUpdateProvidersError {const AigConfigUpdateProvidersError404(this.data);

/// The decoded response payload.
final AigConfigUpdateProvidersResponse404 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class AigConfigUpdateProvidersErrorUnknown extends AigConfigUpdateProvidersError {const AigConfigUpdateProvidersErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
