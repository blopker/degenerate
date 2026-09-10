// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class GetSkillVersionContentSuccess {const GetSkillVersionContentSuccess();

/// Decodes the payload for its declared status and content type.
static GetSkillVersionContentSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 200:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return GetSkillVersionContentSuccess200ApplicationJson(json as String);
}
if (responseMediaTypeMatches(contentType, 'application/zip')) {
final value = (() { return Uint8List.fromList(response.bodyBytes); })();
return GetSkillVersionContentSuccess200ApplicationZip(value);
}
final json = jsonDecode(response.body);
return GetSkillVersionContentSuccess200ApplicationJson(json as String);

default:
return GetSkillVersionContentSuccessUnknown(response);
}
}
}
/// Response for 200 (application/json).
final class GetSkillVersionContentSuccess200ApplicationJson extends GetSkillVersionContentSuccess {const GetSkillVersionContentSuccess200ApplicationJson(this.data);

/// The decoded response payload.
final String data;

}
/// Response for 200 (application/zip).
final class GetSkillVersionContentSuccess200ApplicationZip extends GetSkillVersionContentSuccess {const GetSkillVersionContentSuccess200ApplicationZip(this.data);

/// The decoded response payload.
final Uint8List data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class GetSkillVersionContentSuccessUnknown extends GetSkillVersionContentSuccess {const GetSkillVersionContentSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
