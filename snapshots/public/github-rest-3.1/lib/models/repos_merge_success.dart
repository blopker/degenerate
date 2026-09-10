// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'commit.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class ReposMergeSuccess {const ReposMergeSuccess();

/// Decodes the payload for its declared status and content type.
static ReposMergeSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 201:
final json = jsonDecode(response.body);
return  ReposMergeSuccess201(Commit.fromJson(json as Map<String, dynamic>));case 204:
return  const ReposMergeSuccess204();default:
return  ReposMergeSuccessUnknown(response); }}
}
/// Response for 201 (application/json).
final class ReposMergeSuccess201 extends ReposMergeSuccess {const ReposMergeSuccess201(this.data);

/// The decoded response payload.
final Commit data;

}
/// Response for 204.
final class ReposMergeSuccess204 extends ReposMergeSuccess {const ReposMergeSuccess204();

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposMergeSuccessUnknown extends ReposMergeSuccess {const ReposMergeSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
