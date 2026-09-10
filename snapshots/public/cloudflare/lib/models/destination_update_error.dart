// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'destination_update_response400.dart';import 'destination_update_response401.dart';import 'destination_update_response404.dart';import 'destination_update_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class DestinationUpdateError {const DestinationUpdateError();

/// Decodes the payload for its declared status and content type.
static DestinationUpdateError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return DestinationUpdateError400(DestinationUpdateResponse400.fromJson(json as Map<String, dynamic>));
case 401:
final json = jsonDecode(response.body);
return DestinationUpdateError401(DestinationUpdateResponse401.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return DestinationUpdateError404(DestinationUpdateResponse404.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return DestinationUpdateError500(DestinationUpdateResponse500.fromJson(json as Map<String, dynamic>));
default:
return DestinationUpdateErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class DestinationUpdateError400 extends DestinationUpdateError {const DestinationUpdateError400(this.data);

/// The decoded response payload.
final DestinationUpdateResponse400 data;

}
/// Response for 401 (application/json).
final class DestinationUpdateError401 extends DestinationUpdateError {const DestinationUpdateError401(this.data);

/// The decoded response payload.
final DestinationUpdateResponse401 data;

}
/// Response for 404 (application/json).
final class DestinationUpdateError404 extends DestinationUpdateError {const DestinationUpdateError404(this.data);

/// The decoded response payload.
final DestinationUpdateResponse404 data;

}
/// Response for 500 (application/json).
final class DestinationUpdateError500 extends DestinationUpdateError {const DestinationUpdateError500(this.data);

/// The decoded response payload.
final DestinationUpdateResponse500 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class DestinationUpdateErrorUnknown extends DestinationUpdateError {const DestinationUpdateErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
