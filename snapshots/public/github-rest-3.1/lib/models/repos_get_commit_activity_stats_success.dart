// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'commit_activity.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class ReposGetCommitActivityStatsSuccess {const ReposGetCommitActivityStatsSuccess();

/// Decodes the payload for its declared status and content type.
static ReposGetCommitActivityStatsSuccess parse(ApiResponse response) { switch (response.statusCode) {
case 200:
final json = jsonDecode(response.body);
return ReposGetCommitActivityStatsSuccess200((json as List<dynamic>).map((e) => CommitActivity.fromJson(e as Map<String, dynamic>)).toList());
case 202:
final json = jsonDecode(response.body);
return ReposGetCommitActivityStatsSuccess202(json as Map<String, dynamic>);
case 204:
return const ReposGetCommitActivityStatsSuccess204();
default:
return ReposGetCommitActivityStatsSuccessUnknown(response);
}
 } 
 }
/// Response for 200 (application/json).
final class ReposGetCommitActivityStatsSuccess200 extends ReposGetCommitActivityStatsSuccess {const ReposGetCommitActivityStatsSuccess200(this.data);

/// The decoded response payload.
final List<CommitActivity> data;

 }
/// Response for 202 (application/json).
final class ReposGetCommitActivityStatsSuccess202 extends ReposGetCommitActivityStatsSuccess {const ReposGetCommitActivityStatsSuccess202(this.data);

/// The decoded response payload.
final Map<String, dynamic> data;

 }
/// Response for 204.
final class ReposGetCommitActivityStatsSuccess204 extends ReposGetCommitActivityStatsSuccess {const ReposGetCommitActivityStatsSuccess204();

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ReposGetCommitActivityStatsSuccessUnknown extends ReposGetCommitActivityStatsSuccess {const ReposGetCommitActivityStatsSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
