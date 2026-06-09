// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /orgs/{org}/copilot/billing`.
sealed class CopilotGetCopilotOrganizationDetailsError {const CopilotGetCopilotOrganizationDetailsError();

/// Parse the variant matching the response status code.
factory CopilotGetCopilotOrganizationDetailsError.parse(ApiResponse response) { return switch (response.statusCode) {
  401 => CopilotGetCopilotOrganizationDetailsError401.parse(response),
  403 => CopilotGetCopilotOrganizationDetailsError403.parse(response),
  404 => CopilotGetCopilotOrganizationDetailsError404.parse(response),
  422 => CopilotGetCopilotOrganizationDetailsError422.parse(response),
  500 => CopilotGetCopilotOrganizationDetailsError500.parse(response),
  _ => CopilotGetCopilotOrganizationDetailsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `401` response.
@immutable final class CopilotGetCopilotOrganizationDetailsError401 extends CopilotGetCopilotOrganizationDetailsError {const CopilotGetCopilotOrganizationDetailsError401(this.data);

factory CopilotGetCopilotOrganizationDetailsError401.parse(ApiResponse response) { return CopilotGetCopilotOrganizationDetailsError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotGetCopilotOrganizationDetailsError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotGetCopilotOrganizationDetailsError401($data)'; } 
 }
/// The `403` response.
@immutable final class CopilotGetCopilotOrganizationDetailsError403 extends CopilotGetCopilotOrganizationDetailsError {const CopilotGetCopilotOrganizationDetailsError403(this.data);

factory CopilotGetCopilotOrganizationDetailsError403.parse(ApiResponse response) { return CopilotGetCopilotOrganizationDetailsError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotGetCopilotOrganizationDetailsError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotGetCopilotOrganizationDetailsError403($data)'; } 
 }
/// The `404` response.
@immutable final class CopilotGetCopilotOrganizationDetailsError404 extends CopilotGetCopilotOrganizationDetailsError {const CopilotGetCopilotOrganizationDetailsError404(this.data);

factory CopilotGetCopilotOrganizationDetailsError404.parse(ApiResponse response) { return CopilotGetCopilotOrganizationDetailsError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotGetCopilotOrganizationDetailsError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotGetCopilotOrganizationDetailsError404($data)'; } 
 }
/// The `422` response.
@immutable final class CopilotGetCopilotOrganizationDetailsError422 extends CopilotGetCopilotOrganizationDetailsError {const CopilotGetCopilotOrganizationDetailsError422();

factory CopilotGetCopilotOrganizationDetailsError422.parse(ApiResponse _) { return const CopilotGetCopilotOrganizationDetailsError422(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CopilotGetCopilotOrganizationDetailsError422; } 
@override int get hashCode { return (CopilotGetCopilotOrganizationDetailsError422).hashCode; } 
@override String toString() { return 'CopilotGetCopilotOrganizationDetailsError422()'; } 
 }
/// The `500` response.
@immutable final class CopilotGetCopilotOrganizationDetailsError500 extends CopilotGetCopilotOrganizationDetailsError {const CopilotGetCopilotOrganizationDetailsError500(this.data);

factory CopilotGetCopilotOrganizationDetailsError500.parse(ApiResponse response) { return CopilotGetCopilotOrganizationDetailsError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotGetCopilotOrganizationDetailsError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotGetCopilotOrganizationDetailsError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CopilotGetCopilotOrganizationDetailsError$Unknown extends CopilotGetCopilotOrganizationDetailsError {const CopilotGetCopilotOrganizationDetailsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotGetCopilotOrganizationDetailsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CopilotGetCopilotOrganizationDetailsError.unknown($statusCode)'; } 
 }
