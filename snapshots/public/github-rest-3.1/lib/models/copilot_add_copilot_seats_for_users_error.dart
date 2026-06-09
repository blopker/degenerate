// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `POST /orgs/{org}/copilot/billing/selected_users`.
sealed class CopilotAddCopilotSeatsForUsersError {const CopilotAddCopilotSeatsForUsersError();

/// Parse the variant matching the response status code.
factory CopilotAddCopilotSeatsForUsersError.parse(ApiResponse response) { return switch (response.statusCode) {
  401 => CopilotAddCopilotSeatsForUsersError401.parse(response),
  403 => CopilotAddCopilotSeatsForUsersError403.parse(response),
  404 => CopilotAddCopilotSeatsForUsersError404.parse(response),
  422 => CopilotAddCopilotSeatsForUsersError422.parse(response),
  500 => CopilotAddCopilotSeatsForUsersError500.parse(response),
  _ => CopilotAddCopilotSeatsForUsersError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `401` response.
@immutable final class CopilotAddCopilotSeatsForUsersError401 extends CopilotAddCopilotSeatsForUsersError {const CopilotAddCopilotSeatsForUsersError401(this.data);

factory CopilotAddCopilotSeatsForUsersError401.parse(ApiResponse response) { return CopilotAddCopilotSeatsForUsersError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotAddCopilotSeatsForUsersError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotAddCopilotSeatsForUsersError401($data)'; } 
 }
/// The `403` response.
@immutable final class CopilotAddCopilotSeatsForUsersError403 extends CopilotAddCopilotSeatsForUsersError {const CopilotAddCopilotSeatsForUsersError403(this.data);

factory CopilotAddCopilotSeatsForUsersError403.parse(ApiResponse response) { return CopilotAddCopilotSeatsForUsersError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotAddCopilotSeatsForUsersError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotAddCopilotSeatsForUsersError403($data)'; } 
 }
/// The `404` response.
@immutable final class CopilotAddCopilotSeatsForUsersError404 extends CopilotAddCopilotSeatsForUsersError {const CopilotAddCopilotSeatsForUsersError404(this.data);

factory CopilotAddCopilotSeatsForUsersError404.parse(ApiResponse response) { return CopilotAddCopilotSeatsForUsersError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotAddCopilotSeatsForUsersError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotAddCopilotSeatsForUsersError404($data)'; } 
 }
/// The `422` response.
@immutable final class CopilotAddCopilotSeatsForUsersError422 extends CopilotAddCopilotSeatsForUsersError {const CopilotAddCopilotSeatsForUsersError422();

factory CopilotAddCopilotSeatsForUsersError422.parse(ApiResponse _) { return const CopilotAddCopilotSeatsForUsersError422(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CopilotAddCopilotSeatsForUsersError422; } 
@override int get hashCode { return (CopilotAddCopilotSeatsForUsersError422).hashCode; } 
@override String toString() { return 'CopilotAddCopilotSeatsForUsersError422()'; } 
 }
/// The `500` response.
@immutable final class CopilotAddCopilotSeatsForUsersError500 extends CopilotAddCopilotSeatsForUsersError {const CopilotAddCopilotSeatsForUsersError500(this.data);

factory CopilotAddCopilotSeatsForUsersError500.parse(ApiResponse response) { return CopilotAddCopilotSeatsForUsersError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotAddCopilotSeatsForUsersError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotAddCopilotSeatsForUsersError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CopilotAddCopilotSeatsForUsersError$Unknown extends CopilotAddCopilotSeatsForUsersError {const CopilotAddCopilotSeatsForUsersError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotAddCopilotSeatsForUsersError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CopilotAddCopilotSeatsForUsersError.unknown($statusCode)'; } 
 }
