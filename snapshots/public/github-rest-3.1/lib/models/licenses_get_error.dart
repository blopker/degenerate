// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class LicensesGetError {const LicensesGetError();

/// Decodes the payload for its declared status and content type.
static LicensesGetError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const LicensesGetError304();
case 403:
final json = jsonDecode(response.body);
return LicensesGetError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return LicensesGetError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return LicensesGetErrorUnknown(response);
}
}
}
/// Response for 304.
final class LicensesGetError304 extends LicensesGetError {const LicensesGetError304();

}
/// Response for 403 (application/json).
final class LicensesGetError403 extends LicensesGetError {const LicensesGetError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class LicensesGetError404 extends LicensesGetError {const LicensesGetError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class LicensesGetErrorUnknown extends LicensesGetError {const LicensesGetErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
