// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_get_alert_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodeScanningGetAlertError {const CodeScanningGetAlertError();

/// Decodes the payload for its declared status and content type.
static CodeScanningGetAlertError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const CodeScanningGetAlertError304();
case 403:
final json = jsonDecode(response.body);
return CodeScanningGetAlertError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CodeScanningGetAlertError404(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return CodeScanningGetAlertError503(CodeScanningGetAlertResponse503.fromJson(json as Map<String, dynamic>));
default:
return CodeScanningGetAlertErrorUnknown(response);
}
}
}
/// Response for 304.
final class CodeScanningGetAlertError304 extends CodeScanningGetAlertError {const CodeScanningGetAlertError304();

}
/// Response for 403 (application/json).
final class CodeScanningGetAlertError403 extends CodeScanningGetAlertError {const CodeScanningGetAlertError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CodeScanningGetAlertError404 extends CodeScanningGetAlertError {const CodeScanningGetAlertError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 503 (application/json).
final class CodeScanningGetAlertError503 extends CodeScanningGetAlertError {const CodeScanningGetAlertError503(this.data);

/// The decoded response payload.
final CodeScanningGetAlertResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodeScanningGetAlertErrorUnknown extends CodeScanningGetAlertError {const CodeScanningGetAlertErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
