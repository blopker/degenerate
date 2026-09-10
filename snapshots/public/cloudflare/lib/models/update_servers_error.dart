// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'update_servers_response400.dart';import 'update_servers_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UpdateServersError {const UpdateServersError();

/// Decodes the payload for its declared status and content type.
static UpdateServersError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return UpdateServersError400(UpdateServersResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return UpdateServersError404(UpdateServersResponse404.fromJson(json as Map<String, dynamic>));
default:
return UpdateServersErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class UpdateServersError400 extends UpdateServersError {const UpdateServersError400(this.data);

/// The decoded response payload.
final UpdateServersResponse400 data;

 }
/// Response for 404 (application/json).
final class UpdateServersError404 extends UpdateServersError {const UpdateServersError404(this.data);

/// The decoded response payload.
final UpdateServersResponse404 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class UpdateServersErrorUnknown extends UpdateServersError {const UpdateServersErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
