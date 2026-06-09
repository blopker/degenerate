// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `DELETE /orgs/{org}/copilot/billing/selected_teams`.
sealed class CopilotCancelCopilotSeatAssignmentForTeamsError {const CopilotCancelCopilotSeatAssignmentForTeamsError();

/// Parse the variant matching the response status code.
factory CopilotCancelCopilotSeatAssignmentForTeamsError.parse(ApiResponse response) { return switch (response.statusCode) {
  401 => CopilotCancelCopilotSeatAssignmentForTeamsError401.parse(response),
  403 => CopilotCancelCopilotSeatAssignmentForTeamsError403.parse(response),
  404 => CopilotCancelCopilotSeatAssignmentForTeamsError404.parse(response),
  422 => CopilotCancelCopilotSeatAssignmentForTeamsError422.parse(response),
  500 => CopilotCancelCopilotSeatAssignmentForTeamsError500.parse(response),
  _ => CopilotCancelCopilotSeatAssignmentForTeamsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `401` response.
@immutable final class CopilotCancelCopilotSeatAssignmentForTeamsError401 extends CopilotCancelCopilotSeatAssignmentForTeamsError {const CopilotCancelCopilotSeatAssignmentForTeamsError401(this.data);

factory CopilotCancelCopilotSeatAssignmentForTeamsError401.parse(ApiResponse response) { return CopilotCancelCopilotSeatAssignmentForTeamsError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotCancelCopilotSeatAssignmentForTeamsError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotCancelCopilotSeatAssignmentForTeamsError401($data)'; } 
 }
/// The `403` response.
@immutable final class CopilotCancelCopilotSeatAssignmentForTeamsError403 extends CopilotCancelCopilotSeatAssignmentForTeamsError {const CopilotCancelCopilotSeatAssignmentForTeamsError403(this.data);

factory CopilotCancelCopilotSeatAssignmentForTeamsError403.parse(ApiResponse response) { return CopilotCancelCopilotSeatAssignmentForTeamsError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotCancelCopilotSeatAssignmentForTeamsError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotCancelCopilotSeatAssignmentForTeamsError403($data)'; } 
 }
/// The `404` response.
@immutable final class CopilotCancelCopilotSeatAssignmentForTeamsError404 extends CopilotCancelCopilotSeatAssignmentForTeamsError {const CopilotCancelCopilotSeatAssignmentForTeamsError404(this.data);

factory CopilotCancelCopilotSeatAssignmentForTeamsError404.parse(ApiResponse response) { return CopilotCancelCopilotSeatAssignmentForTeamsError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotCancelCopilotSeatAssignmentForTeamsError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotCancelCopilotSeatAssignmentForTeamsError404($data)'; } 
 }
/// The `422` response.
@immutable final class CopilotCancelCopilotSeatAssignmentForTeamsError422 extends CopilotCancelCopilotSeatAssignmentForTeamsError {const CopilotCancelCopilotSeatAssignmentForTeamsError422();

factory CopilotCancelCopilotSeatAssignmentForTeamsError422.parse(ApiResponse _) { return const CopilotCancelCopilotSeatAssignmentForTeamsError422(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CopilotCancelCopilotSeatAssignmentForTeamsError422; } 
@override int get hashCode { return (CopilotCancelCopilotSeatAssignmentForTeamsError422).hashCode; } 
@override String toString() { return 'CopilotCancelCopilotSeatAssignmentForTeamsError422()'; } 
 }
/// The `500` response.
@immutable final class CopilotCancelCopilotSeatAssignmentForTeamsError500 extends CopilotCancelCopilotSeatAssignmentForTeamsError {const CopilotCancelCopilotSeatAssignmentForTeamsError500(this.data);

factory CopilotCancelCopilotSeatAssignmentForTeamsError500.parse(ApiResponse response) { return CopilotCancelCopilotSeatAssignmentForTeamsError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotCancelCopilotSeatAssignmentForTeamsError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotCancelCopilotSeatAssignmentForTeamsError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CopilotCancelCopilotSeatAssignmentForTeamsError$Unknown extends CopilotCancelCopilotSeatAssignmentForTeamsError {const CopilotCancelCopilotSeatAssignmentForTeamsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotCancelCopilotSeatAssignmentForTeamsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CopilotCancelCopilotSeatAssignmentForTeamsError.unknown($statusCode)'; } 
 }
