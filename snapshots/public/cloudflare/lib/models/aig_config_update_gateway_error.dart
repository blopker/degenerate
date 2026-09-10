// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_update_gateway_response400.dart';import 'aig_config_update_gateway_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AigConfigUpdateGatewayError {const AigConfigUpdateGatewayError();

/// Decodes the payload for its declared status and content type.
static AigConfigUpdateGatewayError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return AigConfigUpdateGatewayError400(AigConfigUpdateGatewayResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return AigConfigUpdateGatewayError404(AigConfigUpdateGatewayResponse404.fromJson(json as Map<String, dynamic>));
default:
return AigConfigUpdateGatewayErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class AigConfigUpdateGatewayError400 extends AigConfigUpdateGatewayError {const AigConfigUpdateGatewayError400(this.data);

/// The decoded response payload.
final AigConfigUpdateGatewayResponse400 data;

}
/// Response for 404 (application/json).
final class AigConfigUpdateGatewayError404 extends AigConfigUpdateGatewayError {const AigConfigUpdateGatewayError404(this.data);

/// The decoded response payload.
final AigConfigUpdateGatewayResponse404 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class AigConfigUpdateGatewayErrorUnknown extends AigConfigUpdateGatewayError {const AigConfigUpdateGatewayErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
