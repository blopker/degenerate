// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'code_scanning_default_setup_update_response.dart';import 'empty_object.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class CodeScanningUpdateDefaultSetupSuccess {const CodeScanningUpdateDefaultSetupSuccess();

/// Decodes the payload for its declared status and content type.
static CodeScanningUpdateDefaultSetupSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 200:
final json = jsonDecode(response.body);
return  CodeScanningUpdateDefaultSetupSuccess200(EmptyObject.fromJson(json as Map<String, dynamic>));case 202:
final json = jsonDecode(response.body);
return  CodeScanningUpdateDefaultSetupSuccess202(CodeScanningDefaultSetupUpdateResponse.fromJson(json as Map<String, dynamic>));default:
return  CodeScanningUpdateDefaultSetupSuccessUnknown(response); }}
}
/// Response for 200 (application/json).
final class CodeScanningUpdateDefaultSetupSuccess200 extends CodeScanningUpdateDefaultSetupSuccess {const CodeScanningUpdateDefaultSetupSuccess200(this.data);

/// The decoded response payload.
final EmptyObject data;

}
/// Response for 202 (application/json).
final class CodeScanningUpdateDefaultSetupSuccess202 extends CodeScanningUpdateDefaultSetupSuccess {const CodeScanningUpdateDefaultSetupSuccess202(this.data);

/// The decoded response payload.
final CodeScanningDefaultSetupUpdateResponse data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodeScanningUpdateDefaultSetupSuccessUnknown extends CodeScanningUpdateDefaultSetupSuccess {const CodeScanningUpdateDefaultSetupSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
