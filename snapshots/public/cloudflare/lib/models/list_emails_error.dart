// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'list_emails_response400.dart';import 'list_emails_response500.dart';/// Error responses of `GET /accounts/{account_id}/abuse-reports/{report_id}/emails`.
sealed class ListEmailsError {const ListEmailsError();

/// Parse the variant matching the response status code.
factory ListEmailsError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => ListEmailsError400.parse(response),
  500 => ListEmailsError500.parse(response),
  _ => ListEmailsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class ListEmailsError400 extends ListEmailsError {const ListEmailsError400(this.data);

factory ListEmailsError400.parse(ApiResponse response) { return ListEmailsError400(ListEmailsResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ListEmailsResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ListEmailsError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ListEmailsError400($data)'; } 
 }
/// The `500` response.
@immutable final class ListEmailsError500 extends ListEmailsError {const ListEmailsError500(this.data);

factory ListEmailsError500.parse(ApiResponse response) { return ListEmailsError500(ListEmailsResponse500.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ListEmailsResponse500 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ListEmailsError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ListEmailsError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ListEmailsError$Unknown extends ListEmailsError {const ListEmailsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ListEmailsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ListEmailsError.unknown($statusCode)'; } 
 }
