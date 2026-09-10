// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'contributor_activity.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class ReposGetContributorsStatsSuccess {const ReposGetContributorsStatsSuccess();

/// Decodes the payload for its declared status and content type.
static ReposGetContributorsStatsSuccess parse(ApiResponse response) { switch (response.statusCode) {
case 200:
final json = jsonDecode(response.body);
return ReposGetContributorsStatsSuccess200((json as List<dynamic>).map((e) => ContributorActivity.fromJson(e as Map<String, dynamic>)).toList());
case 202:
final json = jsonDecode(response.body);
return ReposGetContributorsStatsSuccess202(json as Map<String, dynamic>);
case 204:
return const ReposGetContributorsStatsSuccess204();
default:
return ReposGetContributorsStatsSuccessUnknown(response);
}
 } 
 }
/// Response for 200 (application/json).
final class ReposGetContributorsStatsSuccess200 extends ReposGetContributorsStatsSuccess {const ReposGetContributorsStatsSuccess200(this.data);

/// The decoded response payload.
final List<ContributorActivity> data;

 }
/// Response for 202 (application/json).
final class ReposGetContributorsStatsSuccess202 extends ReposGetContributorsStatsSuccess {const ReposGetContributorsStatsSuccess202(this.data);

/// The decoded response payload.
final Map<String, dynamic> data;

 }
/// Response for 204.
final class ReposGetContributorsStatsSuccess204 extends ReposGetContributorsStatsSuccess {const ReposGetContributorsStatsSuccess204();

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ReposGetContributorsStatsSuccessUnknown extends ReposGetContributorsStatsSuccess {const ReposGetContributorsStatsSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
