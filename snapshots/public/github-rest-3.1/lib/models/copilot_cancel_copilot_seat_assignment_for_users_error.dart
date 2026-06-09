// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `DELETE /orgs/{org}/copilot/billing/selected_users`.
sealed class CopilotCancelCopilotSeatAssignmentForUsersError {const CopilotCancelCopilotSeatAssignmentForUsersError();

/// Parse the variant matching the response status code.
factory CopilotCancelCopilotSeatAssignmentForUsersError.parse(ApiResponse response) { return switch (response.statusCode) {
  401 => CopilotCancelCopilotSeatAssignmentForUsersError401.parse(response),
  403 => CopilotCancelCopilotSeatAssignmentForUsersError403.parse(response),
  404 => CopilotCancelCopilotSeatAssignmentForUsersError404.parse(response),
  422 => CopilotCancelCopilotSeatAssignmentForUsersError422.parse(response),
  500 => CopilotCancelCopilotSeatAssignmentForUsersError500.parse(response),
  _ => CopilotCancelCopilotSeatAssignmentForUsersError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `401` response.
@immutable final class CopilotCancelCopilotSeatAssignmentForUsersError401 extends CopilotCancelCopilotSeatAssignmentForUsersError {const CopilotCancelCopilotSeatAssignmentForUsersError401(this.data);

factory CopilotCancelCopilotSeatAssignmentForUsersError401.parse(ApiResponse response) { return CopilotCancelCopilotSeatAssignmentForUsersError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotCancelCopilotSeatAssignmentForUsersError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotCancelCopilotSeatAssignmentForUsersError401($data)'; } 
 }
/// The `403` response.
@immutable final class CopilotCancelCopilotSeatAssignmentForUsersError403 extends CopilotCancelCopilotSeatAssignmentForUsersError {const CopilotCancelCopilotSeatAssignmentForUsersError403(this.data);

factory CopilotCancelCopilotSeatAssignmentForUsersError403.parse(ApiResponse response) { return CopilotCancelCopilotSeatAssignmentForUsersError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotCancelCopilotSeatAssignmentForUsersError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotCancelCopilotSeatAssignmentForUsersError403($data)'; } 
 }
/// The `404` response.
@immutable final class CopilotCancelCopilotSeatAssignmentForUsersError404 extends CopilotCancelCopilotSeatAssignmentForUsersError {const CopilotCancelCopilotSeatAssignmentForUsersError404(this.data);

factory CopilotCancelCopilotSeatAssignmentForUsersError404.parse(ApiResponse response) { return CopilotCancelCopilotSeatAssignmentForUsersError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotCancelCopilotSeatAssignmentForUsersError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotCancelCopilotSeatAssignmentForUsersError404($data)'; } 
 }
/// The `422` response.
@immutable final class CopilotCancelCopilotSeatAssignmentForUsersError422 extends CopilotCancelCopilotSeatAssignmentForUsersError {const CopilotCancelCopilotSeatAssignmentForUsersError422();

factory CopilotCancelCopilotSeatAssignmentForUsersError422.parse(ApiResponse _) { return const CopilotCancelCopilotSeatAssignmentForUsersError422(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CopilotCancelCopilotSeatAssignmentForUsersError422; } 
@override int get hashCode { return (CopilotCancelCopilotSeatAssignmentForUsersError422).hashCode; } 
@override String toString() { return 'CopilotCancelCopilotSeatAssignmentForUsersError422()'; } 
 }
/// The `500` response.
@immutable final class CopilotCancelCopilotSeatAssignmentForUsersError500 extends CopilotCancelCopilotSeatAssignmentForUsersError {const CopilotCancelCopilotSeatAssignmentForUsersError500(this.data);

factory CopilotCancelCopilotSeatAssignmentForUsersError500.parse(ApiResponse response) { return CopilotCancelCopilotSeatAssignmentForUsersError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotCancelCopilotSeatAssignmentForUsersError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotCancelCopilotSeatAssignmentForUsersError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CopilotCancelCopilotSeatAssignmentForUsersError$Unknown extends CopilotCancelCopilotSeatAssignmentForUsersError {const CopilotCancelCopilotSeatAssignmentForUsersError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotCancelCopilotSeatAssignmentForUsersError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CopilotCancelCopilotSeatAssignmentForUsersError.unknown($statusCode)'; } 
 }
