// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_all_recordings_response.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class GetAllRecordingsSuccess {const GetAllRecordingsSuccess();

/// Decodes the payload for its declared status and content type.
static GetAllRecordingsSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 200:
final json = jsonDecode(response.body);
return  GetAllRecordingsSuccess200(GetAllRecordingsResponse.fromJson(json as Map<String, dynamic>));case 201:
return  const GetAllRecordingsSuccess201();default:
return  GetAllRecordingsSuccessUnknown(response); }}
}
/// Response for 200 (application/json).
final class GetAllRecordingsSuccess200 extends GetAllRecordingsSuccess {const GetAllRecordingsSuccess200(this.data);

/// The decoded response payload.
final GetAllRecordingsResponse data;

}
/// Response for 201.
final class GetAllRecordingsSuccess201 extends GetAllRecordingsSuccess {const GetAllRecordingsSuccess201();

}
/// An undeclared status. The complete response is retained for manual handling.
final class GetAllRecordingsSuccessUnknown extends GetAllRecordingsSuccess {const GetAllRecordingsSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
