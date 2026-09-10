// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActivityListPublicEventsForRepoNetworkError {const ActivityListPublicEventsForRepoNetworkError();

/// Decodes the payload for its declared status and content type.
static ActivityListPublicEventsForRepoNetworkError parse(ApiResponse response) {switch (response.statusCode) {
case 301:
final json = jsonDecode(response.body);
return ActivityListPublicEventsForRepoNetworkError301(BasicError.fromJson(json as Map<String, dynamic>));
case 304:
return const ActivityListPublicEventsForRepoNetworkError304();
case 403:
final json = jsonDecode(response.body);
return ActivityListPublicEventsForRepoNetworkError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return ActivityListPublicEventsForRepoNetworkError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ActivityListPublicEventsForRepoNetworkErrorUnknown(response);
}
}
}
/// Response for 301 (application/json).
final class ActivityListPublicEventsForRepoNetworkError301 extends ActivityListPublicEventsForRepoNetworkError {const ActivityListPublicEventsForRepoNetworkError301(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 304.
final class ActivityListPublicEventsForRepoNetworkError304 extends ActivityListPublicEventsForRepoNetworkError {const ActivityListPublicEventsForRepoNetworkError304();

}
/// Response for 403 (application/json).
final class ActivityListPublicEventsForRepoNetworkError403 extends ActivityListPublicEventsForRepoNetworkError {const ActivityListPublicEventsForRepoNetworkError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class ActivityListPublicEventsForRepoNetworkError404 extends ActivityListPublicEventsForRepoNetworkError {const ActivityListPublicEventsForRepoNetworkError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActivityListPublicEventsForRepoNetworkErrorUnknown extends ActivityListPublicEventsForRepoNetworkError {const ActivityListPublicEventsForRepoNetworkErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
