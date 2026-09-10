// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'repos_compare_commits_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposCompareCommitsError {const ReposCompareCommitsError();

/// Decodes the payload for its declared status and content type.
static ReposCompareCommitsError parse(ApiResponse response) { switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return ReposCompareCommitsError404(BasicError.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return ReposCompareCommitsError500(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return ReposCompareCommitsError503(ReposCompareCommitsResponse503.fromJson(json as Map<String, dynamic>));
default:
return ReposCompareCommitsErrorUnknown(response);
}
 } 
 }
/// Response for 404 (application/json).
final class ReposCompareCommitsError404 extends ReposCompareCommitsError {const ReposCompareCommitsError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 500 (application/json).
final class ReposCompareCommitsError500 extends ReposCompareCommitsError {const ReposCompareCommitsError500(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 503 (application/json).
final class ReposCompareCommitsError503 extends ReposCompareCommitsError {const ReposCompareCommitsError503(this.data);

/// The decoded response payload.
final ReposCompareCommitsResponse503 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ReposCompareCommitsErrorUnknown extends ReposCompareCommitsError {const ReposCompareCommitsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
