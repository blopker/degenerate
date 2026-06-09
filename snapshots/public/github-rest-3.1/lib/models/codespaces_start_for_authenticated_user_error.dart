// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `POST /user/codespaces/{codespace_name}/start`.
sealed class CodespacesStartForAuthenticatedUserError {const CodespacesStartForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory CodespacesStartForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => CodespacesStartForAuthenticatedUserError304.parse(response),
  400 => CodespacesStartForAuthenticatedUserError400.parse(response),
  401 => CodespacesStartForAuthenticatedUserError401.parse(response),
  402 => CodespacesStartForAuthenticatedUserError402.parse(response),
  403 => CodespacesStartForAuthenticatedUserError403.parse(response),
  404 => CodespacesStartForAuthenticatedUserError404.parse(response),
  409 => CodespacesStartForAuthenticatedUserError409.parse(response),
  500 => CodespacesStartForAuthenticatedUserError500.parse(response),
  _ => CodespacesStartForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class CodespacesStartForAuthenticatedUserError304 extends CodespacesStartForAuthenticatedUserError {const CodespacesStartForAuthenticatedUserError304();

factory CodespacesStartForAuthenticatedUserError304.parse(ApiResponse _) { return const CodespacesStartForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodespacesStartForAuthenticatedUserError304; } 
@override int get hashCode { return (CodespacesStartForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'CodespacesStartForAuthenticatedUserError304()'; } 
 }
/// The `400` response.
@immutable final class CodespacesStartForAuthenticatedUserError400 extends CodespacesStartForAuthenticatedUserError {const CodespacesStartForAuthenticatedUserError400(this.data);

factory CodespacesStartForAuthenticatedUserError400.parse(ApiResponse response) { return CodespacesStartForAuthenticatedUserError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesStartForAuthenticatedUserError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesStartForAuthenticatedUserError400($data)'; } 
 }
/// The `401` response.
@immutable final class CodespacesStartForAuthenticatedUserError401 extends CodespacesStartForAuthenticatedUserError {const CodespacesStartForAuthenticatedUserError401(this.data);

factory CodespacesStartForAuthenticatedUserError401.parse(ApiResponse response) { return CodespacesStartForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesStartForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesStartForAuthenticatedUserError401($data)'; } 
 }
/// The `402` response.
@immutable final class CodespacesStartForAuthenticatedUserError402 extends CodespacesStartForAuthenticatedUserError {const CodespacesStartForAuthenticatedUserError402(this.data);

factory CodespacesStartForAuthenticatedUserError402.parse(ApiResponse response) { return CodespacesStartForAuthenticatedUserError402(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesStartForAuthenticatedUserError402 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesStartForAuthenticatedUserError402($data)'; } 
 }
/// The `403` response.
@immutable final class CodespacesStartForAuthenticatedUserError403 extends CodespacesStartForAuthenticatedUserError {const CodespacesStartForAuthenticatedUserError403(this.data);

factory CodespacesStartForAuthenticatedUserError403.parse(ApiResponse response) { return CodespacesStartForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesStartForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesStartForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodespacesStartForAuthenticatedUserError404 extends CodespacesStartForAuthenticatedUserError {const CodespacesStartForAuthenticatedUserError404(this.data);

factory CodespacesStartForAuthenticatedUserError404.parse(ApiResponse response) { return CodespacesStartForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesStartForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesStartForAuthenticatedUserError404($data)'; } 
 }
/// The `409` response.
@immutable final class CodespacesStartForAuthenticatedUserError409 extends CodespacesStartForAuthenticatedUserError {const CodespacesStartForAuthenticatedUserError409(this.data);

factory CodespacesStartForAuthenticatedUserError409.parse(ApiResponse response) { return CodespacesStartForAuthenticatedUserError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesStartForAuthenticatedUserError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesStartForAuthenticatedUserError409($data)'; } 
 }
/// The `500` response.
@immutable final class CodespacesStartForAuthenticatedUserError500 extends CodespacesStartForAuthenticatedUserError {const CodespacesStartForAuthenticatedUserError500(this.data);

factory CodespacesStartForAuthenticatedUserError500.parse(ApiResponse response) { return CodespacesStartForAuthenticatedUserError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesStartForAuthenticatedUserError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesStartForAuthenticatedUserError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodespacesStartForAuthenticatedUserError$Unknown extends CodespacesStartForAuthenticatedUserError {const CodespacesStartForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesStartForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodespacesStartForAuthenticatedUserError.unknown($statusCode)'; } 
 }
