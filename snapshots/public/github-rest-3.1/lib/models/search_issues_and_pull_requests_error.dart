// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'search_issues_and_pull_requests_response503.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class SearchIssuesAndPullRequestsError {const SearchIssuesAndPullRequestsError();

/// Decodes the payload for its declared status and content type.
static SearchIssuesAndPullRequestsError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const SearchIssuesAndPullRequestsError304();
case 403:
final json = jsonDecode(response.body);
return SearchIssuesAndPullRequestsError403(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return SearchIssuesAndPullRequestsError422(ValidationError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return SearchIssuesAndPullRequestsError503(SearchIssuesAndPullRequestsResponse503.fromJson(json as Map<String, dynamic>));
default:
return SearchIssuesAndPullRequestsErrorUnknown(response);
}
}
}
/// Response for 304.
final class SearchIssuesAndPullRequestsError304 extends SearchIssuesAndPullRequestsError {const SearchIssuesAndPullRequestsError304();

}
/// Response for 403 (application/json).
final class SearchIssuesAndPullRequestsError403 extends SearchIssuesAndPullRequestsError {const SearchIssuesAndPullRequestsError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class SearchIssuesAndPullRequestsError422 extends SearchIssuesAndPullRequestsError {const SearchIssuesAndPullRequestsError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// Response for 503 (application/json).
final class SearchIssuesAndPullRequestsError503 extends SearchIssuesAndPullRequestsError {const SearchIssuesAndPullRequestsError503(this.data);

/// The decoded response payload.
final SearchIssuesAndPullRequestsResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class SearchIssuesAndPullRequestsErrorUnknown extends SearchIssuesAndPullRequestsError {const SearchIssuesAndPullRequestsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
