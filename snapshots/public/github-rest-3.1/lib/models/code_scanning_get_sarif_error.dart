// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_get_sarif_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodeScanningGetSarifError {const CodeScanningGetSarifError();

/// Decodes the payload for its declared status and content type.
static CodeScanningGetSarifError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return CodeScanningGetSarifError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
return const CodeScanningGetSarifError404();
case 503:
final json = jsonDecode(response.body);
return CodeScanningGetSarifError503(CodeScanningGetSarifResponse503.fromJson(json as Map<String, dynamic>));
default:
return CodeScanningGetSarifErrorUnknown(response);
}
}
}
/// Response for 403 (application/json).
final class CodeScanningGetSarifError403 extends CodeScanningGetSarifError {const CodeScanningGetSarifError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404.
final class CodeScanningGetSarifError404 extends CodeScanningGetSarifError {const CodeScanningGetSarifError404();

}
/// Response for 503 (application/json).
final class CodeScanningGetSarifError503 extends CodeScanningGetSarifError {const CodeScanningGetSarifError503(this.data);

/// The decoded response payload.
final CodeScanningGetSarifResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodeScanningGetSarifErrorUnknown extends CodeScanningGetSarifError {const CodeScanningGetSarifErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
