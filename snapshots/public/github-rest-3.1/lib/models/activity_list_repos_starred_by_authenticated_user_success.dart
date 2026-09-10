// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository.dart';import 'starred_repository.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class ActivityListReposStarredByAuthenticatedUserSuccess {const ActivityListReposStarredByAuthenticatedUserSuccess();

/// Decodes the payload for its declared status and content type.
static ActivityListReposStarredByAuthenticatedUserSuccess parse(ApiResponse response) { switch (response.statusCode) {
case 200:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return ActivityListReposStarredByAuthenticatedUserSuccess200ApplicationJson((json as List<dynamic>).map((e) => Repository.fromJson(e as Map<String, dynamic>)).toList());
}
if (responseMediaTypeMatches(contentType, 'application/vnd.github.v3.star+json')) {
final json = jsonDecode(response.body);
return ActivityListReposStarredByAuthenticatedUserSuccess200StarJson((json as List<dynamic>).map((e) => StarredRepository.fromJson(e as Map<String, dynamic>)).toList());
}
final json = jsonDecode(response.body);
return ActivityListReposStarredByAuthenticatedUserSuccess200ApplicationJson((json as List<dynamic>).map((e) => Repository.fromJson(e as Map<String, dynamic>)).toList());

default:
return ActivityListReposStarredByAuthenticatedUserSuccessUnknown(response);
}
 } 
 }
/// Response for 200 (application/json).
final class ActivityListReposStarredByAuthenticatedUserSuccess200ApplicationJson extends ActivityListReposStarredByAuthenticatedUserSuccess {const ActivityListReposStarredByAuthenticatedUserSuccess200ApplicationJson(this.data);

/// The decoded response payload.
final List<Repository> data;

 }
/// Response for 200 (application/vnd.github.v3.star+json).
final class ActivityListReposStarredByAuthenticatedUserSuccess200StarJson extends ActivityListReposStarredByAuthenticatedUserSuccess {const ActivityListReposStarredByAuthenticatedUserSuccess200StarJson(this.data);

/// The decoded response payload.
final List<StarredRepository> data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ActivityListReposStarredByAuthenticatedUserSuccessUnknown extends ActivityListReposStarredByAuthenticatedUserSuccess {const ActivityListReposStarredByAuthenticatedUserSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
