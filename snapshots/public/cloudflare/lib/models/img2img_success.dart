// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class Img2imgSuccess {const Img2imgSuccess();

/// Decodes the payload for its declared status and content type.
static Img2imgSuccess parse(ApiResponse response) { switch (response.statusCode) {
case 200:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return Img2imgSuccess200ApplicationJson(json as Map<String, dynamic>);
}
if (responseMediaTypeMatches(contentType, 'image/png')) {
final value = (() { return Uint8List.fromList(response.bodyBytes); })();
return Img2imgSuccess200ImagePng(value);
}
final json = jsonDecode(response.body);
return Img2imgSuccess200ApplicationJson(json as Map<String, dynamic>);

default:
return Img2imgSuccessUnknown(response);
}
 } 
 }
/// Response for 200 (application/json).
final class Img2imgSuccess200ApplicationJson extends Img2imgSuccess {const Img2imgSuccess200ApplicationJson(this.data);

/// The decoded response payload.
final Map<String, dynamic> data;

 }
/// Response for 200 (image/png).
final class Img2imgSuccess200ImagePng extends Img2imgSuccess {const Img2imgSuccess200ImagePng(this.data);

/// The decoded response payload.
final Uint8List data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class Img2imgSuccessUnknown extends Img2imgSuccess {const Img2imgSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
