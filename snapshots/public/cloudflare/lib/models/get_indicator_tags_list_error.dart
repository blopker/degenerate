// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_indicator_tags_list_response400.dart';import 'get_indicator_tags_list_response404.dart';import 'get_indicator_tags_list_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GetIndicatorTagsListError {const GetIndicatorTagsListError();

/// Decodes the payload for its declared status and content type.
static GetIndicatorTagsListError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return GetIndicatorTagsListError400(GetIndicatorTagsListResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return GetIndicatorTagsListError404(GetIndicatorTagsListResponse404.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return GetIndicatorTagsListError500(GetIndicatorTagsListResponse500.fromJson(json as Map<String, dynamic>));
default:
return GetIndicatorTagsListErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class GetIndicatorTagsListError400 extends GetIndicatorTagsListError {const GetIndicatorTagsListError400(this.data);

/// The decoded response payload.
final GetIndicatorTagsListResponse400 data;

 }
/// Response for 404 (application/json).
final class GetIndicatorTagsListError404 extends GetIndicatorTagsListError {const GetIndicatorTagsListError404(this.data);

/// The decoded response payload.
final GetIndicatorTagsListResponse404 data;

 }
/// Response for 500 (application/json).
final class GetIndicatorTagsListError500 extends GetIndicatorTagsListError {const GetIndicatorTagsListError500(this.data);

/// The decoded response payload.
final GetIndicatorTagsListResponse500 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class GetIndicatorTagsListErrorUnknown extends GetIndicatorTagsListError {const GetIndicatorTagsListErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
