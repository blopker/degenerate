// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class GetSkillContentSuccess {const GetSkillContentSuccess();

/// Decodes the payload for its declared status and content type.
static GetSkillContentSuccess parse(ApiResponse response) { switch (response.statusCode) {
case 200:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return GetSkillContentSuccess200ApplicationJson(json as String);
}
if (responseMediaTypeMatches(contentType, 'application/zip')) {
final value = (() { return Uint8List.fromList(response.bodyBytes); })();
return GetSkillContentSuccess200ApplicationZip(value);
}
final json = jsonDecode(response.body);
return GetSkillContentSuccess200ApplicationJson(json as String);

default:
return GetSkillContentSuccessUnknown(response);
}
 } 
 }
/// Response for 200 (application/json).
final class GetSkillContentSuccess200ApplicationJson extends GetSkillContentSuccess {const GetSkillContentSuccess200ApplicationJson(this.data);

/// The decoded response payload.
final String data;

 }
/// Response for 200 (application/zip).
final class GetSkillContentSuccess200ApplicationZip extends GetSkillContentSuccess {const GetSkillContentSuccess200ApplicationZip(this.data);

/// The decoded response payload.
final Uint8List data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class GetSkillContentSuccessUnknown extends GetSkillContentSuccess {const GetSkillContentSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
