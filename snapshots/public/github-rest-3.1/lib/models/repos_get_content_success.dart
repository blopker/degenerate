// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'content_tree.dart';import 'repos_get_content_response.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class ReposGetContentSuccess {const ReposGetContentSuccess();

/// Decodes the payload for its declared status and content type.
static ReposGetContentSuccess parse(ApiResponse response) { switch (response.statusCode) {
case 200:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return ReposGetContentSuccess200ApplicationJson(ReposGetContentResponse.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/vnd.github.object')) {
// TODO: Unsupported non-JSON response schema Cannot decode application/vnd.github.object response into ContentTree
throw UnsupportedError('Cannot decode application/vnd.github.object response into ContentTree');
}
final json = jsonDecode(response.body);
return ReposGetContentSuccess200ApplicationJson(ReposGetContentResponse.fromJson(json as Map<String, dynamic>));

default:
return ReposGetContentSuccessUnknown(response);
}
 } 
 }
/// Response for 200 (application/json).
final class ReposGetContentSuccess200ApplicationJson extends ReposGetContentSuccess {const ReposGetContentSuccess200ApplicationJson(this.data);

/// The decoded response payload.
final ReposGetContentResponse data;

 }
/// Response for 200 (application/vnd.github.object).
final class ReposGetContentSuccess200ApplicationVndGithubObject extends ReposGetContentSuccess {const ReposGetContentSuccess200ApplicationVndGithubObject(this.data);

/// The decoded response payload.
final ContentTree data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ReposGetContentSuccessUnknown extends ReposGetContentSuccess {const ReposGetContentSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
