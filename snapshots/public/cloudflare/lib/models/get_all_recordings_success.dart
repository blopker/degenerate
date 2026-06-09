// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_paging_response.dart';/// Success responses of `GET /accounts/{account_id}/realtime/kit/{app_id}/recordings`.
sealed class GetAllRecordingsSuccess {const GetAllRecordingsSuccess();

/// Parse the variant matching the response status code.
factory GetAllRecordingsSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  200 => GetAllRecordingsSuccess200.parse(response),
  201 => GetAllRecordingsSuccess201.parse(response),
  _ => GetAllRecordingsSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `200` response.
@immutable final class GetAllRecordingsSuccess200 extends GetAllRecordingsSuccess {const GetAllRecordingsSuccess200(this.data);

factory GetAllRecordingsSuccess200.parse(ApiResponse response) { return GetAllRecordingsSuccess200(RealtimekitPagingResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final RealtimekitPagingResponse data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetAllRecordingsSuccess200 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GetAllRecordingsSuccess200($data)'; } 
 }
/// The `201` response.
@immutable final class GetAllRecordingsSuccess201 extends GetAllRecordingsSuccess {const GetAllRecordingsSuccess201();

factory GetAllRecordingsSuccess201.parse(ApiResponse _) { return const GetAllRecordingsSuccess201(); }

@override bool operator ==(Object other) { return identical(this, other) || other is GetAllRecordingsSuccess201; } 
@override int get hashCode { return (GetAllRecordingsSuccess201).hashCode; } 
@override String toString() { return 'GetAllRecordingsSuccess201()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GetAllRecordingsSuccess$Unknown extends GetAllRecordingsSuccess {const GetAllRecordingsSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetAllRecordingsSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GetAllRecordingsSuccess.unknown($statusCode)'; } 
 }
