// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_investigate_response.dart';import 'email_security_investigate_response202.dart';/// Success responses of `GET /accounts/{account_id}/email-security/investigate`.
sealed class EmailSecurityInvestigateSuccess {const EmailSecurityInvestigateSuccess();

/// Parse the variant matching the response status code.
factory EmailSecurityInvestigateSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  200 => EmailSecurityInvestigateSuccess200.parse(response),
  202 => EmailSecurityInvestigateSuccess202.parse(response),
  _ => EmailSecurityInvestigateSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `200` response.
@immutable final class EmailSecurityInvestigateSuccess200 extends EmailSecurityInvestigateSuccess {const EmailSecurityInvestigateSuccess200(this.data);

factory EmailSecurityInvestigateSuccess200.parse(ApiResponse response) { return EmailSecurityInvestigateSuccess200(EmailSecurityInvestigateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final EmailSecurityInvestigateResponse data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecurityInvestigateSuccess200 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'EmailSecurityInvestigateSuccess200($data)'; } 
 }
/// The `202` response.
@immutable final class EmailSecurityInvestigateSuccess202 extends EmailSecurityInvestigateSuccess {const EmailSecurityInvestigateSuccess202(this.data);

factory EmailSecurityInvestigateSuccess202.parse(ApiResponse response) { return EmailSecurityInvestigateSuccess202(EmailSecurityInvestigateResponse202.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final EmailSecurityInvestigateResponse202 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecurityInvestigateSuccess202 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'EmailSecurityInvestigateSuccess202($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class EmailSecurityInvestigateSuccess$Unknown extends EmailSecurityInvestigateSuccess {const EmailSecurityInvestigateSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecurityInvestigateSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'EmailSecurityInvestigateSuccess.unknown($statusCode)'; } 
 }
