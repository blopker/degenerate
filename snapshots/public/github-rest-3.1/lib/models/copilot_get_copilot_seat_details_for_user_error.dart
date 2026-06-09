// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /orgs/{org}/members/{username}/copilot`.
sealed class CopilotGetCopilotSeatDetailsForUserError {const CopilotGetCopilotSeatDetailsForUserError();

/// Parse the variant matching the response status code.
factory CopilotGetCopilotSeatDetailsForUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  401 => CopilotGetCopilotSeatDetailsForUserError401.parse(response),
  403 => CopilotGetCopilotSeatDetailsForUserError403.parse(response),
  404 => CopilotGetCopilotSeatDetailsForUserError404.parse(response),
  422 => CopilotGetCopilotSeatDetailsForUserError422.parse(response),
  500 => CopilotGetCopilotSeatDetailsForUserError500.parse(response),
  _ => CopilotGetCopilotSeatDetailsForUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `401` response.
@immutable final class CopilotGetCopilotSeatDetailsForUserError401 extends CopilotGetCopilotSeatDetailsForUserError {const CopilotGetCopilotSeatDetailsForUserError401(this.data);

factory CopilotGetCopilotSeatDetailsForUserError401.parse(ApiResponse response) { return CopilotGetCopilotSeatDetailsForUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotGetCopilotSeatDetailsForUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotGetCopilotSeatDetailsForUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class CopilotGetCopilotSeatDetailsForUserError403 extends CopilotGetCopilotSeatDetailsForUserError {const CopilotGetCopilotSeatDetailsForUserError403(this.data);

factory CopilotGetCopilotSeatDetailsForUserError403.parse(ApiResponse response) { return CopilotGetCopilotSeatDetailsForUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotGetCopilotSeatDetailsForUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotGetCopilotSeatDetailsForUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class CopilotGetCopilotSeatDetailsForUserError404 extends CopilotGetCopilotSeatDetailsForUserError {const CopilotGetCopilotSeatDetailsForUserError404(this.data);

factory CopilotGetCopilotSeatDetailsForUserError404.parse(ApiResponse response) { return CopilotGetCopilotSeatDetailsForUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotGetCopilotSeatDetailsForUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotGetCopilotSeatDetailsForUserError404($data)'; } 
 }
/// The `422` response.
@immutable final class CopilotGetCopilotSeatDetailsForUserError422 extends CopilotGetCopilotSeatDetailsForUserError {const CopilotGetCopilotSeatDetailsForUserError422();

factory CopilotGetCopilotSeatDetailsForUserError422.parse(ApiResponse _) { return const CopilotGetCopilotSeatDetailsForUserError422(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CopilotGetCopilotSeatDetailsForUserError422; } 
@override int get hashCode { return (CopilotGetCopilotSeatDetailsForUserError422).hashCode; } 
@override String toString() { return 'CopilotGetCopilotSeatDetailsForUserError422()'; } 
 }
/// The `500` response.
@immutable final class CopilotGetCopilotSeatDetailsForUserError500 extends CopilotGetCopilotSeatDetailsForUserError {const CopilotGetCopilotSeatDetailsForUserError500(this.data);

factory CopilotGetCopilotSeatDetailsForUserError500.parse(ApiResponse response) { return CopilotGetCopilotSeatDetailsForUserError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotGetCopilotSeatDetailsForUserError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotGetCopilotSeatDetailsForUserError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CopilotGetCopilotSeatDetailsForUserError$Unknown extends CopilotGetCopilotSeatDetailsForUserError {const CopilotGetCopilotSeatDetailsForUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotGetCopilotSeatDetailsForUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CopilotGetCopilotSeatDetailsForUserError.unknown($statusCode)'; } 
 }
