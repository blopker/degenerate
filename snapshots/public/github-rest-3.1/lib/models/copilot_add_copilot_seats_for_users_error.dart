// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CopilotAddCopilotSeatsForUsersError {const CopilotAddCopilotSeatsForUsersError();

/// Decodes the payload for its declared status and content type.
static CopilotAddCopilotSeatsForUsersError parse(ApiResponse response) {switch (response.statusCode) {
case 401:
final json = jsonDecode(response.body);
return CopilotAddCopilotSeatsForUsersError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return CopilotAddCopilotSeatsForUsersError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CopilotAddCopilotSeatsForUsersError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
return const CopilotAddCopilotSeatsForUsersError422();
case 500:
final json = jsonDecode(response.body);
return CopilotAddCopilotSeatsForUsersError500(BasicError.fromJson(json as Map<String, dynamic>));
default:
return CopilotAddCopilotSeatsForUsersErrorUnknown(response);
}
}
}
/// Response for 401 (application/json).
final class CopilotAddCopilotSeatsForUsersError401 extends CopilotAddCopilotSeatsForUsersError {const CopilotAddCopilotSeatsForUsersError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class CopilotAddCopilotSeatsForUsersError403 extends CopilotAddCopilotSeatsForUsersError {const CopilotAddCopilotSeatsForUsersError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CopilotAddCopilotSeatsForUsersError404 extends CopilotAddCopilotSeatsForUsersError {const CopilotAddCopilotSeatsForUsersError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422.
final class CopilotAddCopilotSeatsForUsersError422 extends CopilotAddCopilotSeatsForUsersError {const CopilotAddCopilotSeatsForUsersError422();

}
/// Response for 500 (application/json).
final class CopilotAddCopilotSeatsForUsersError500 extends CopilotAddCopilotSeatsForUsersError {const CopilotAddCopilotSeatsForUsersError500(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CopilotAddCopilotSeatsForUsersErrorUnknown extends CopilotAddCopilotSeatsForUsersError {const CopilotAddCopilotSeatsForUsersErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
