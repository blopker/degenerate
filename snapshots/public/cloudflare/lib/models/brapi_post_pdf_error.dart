// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_pdf_response400.dart';import 'brapi_post_pdf_response422.dart';import 'brapi_post_pdf_response429.dart';import 'brapi_post_pdf_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class BrapiPostPdfError {const BrapiPostPdfError();

/// Decodes the payload for its declared status and content type.
static BrapiPostPdfError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return BrapiPostPdfError400(BrapiPostPdfResponse400.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return BrapiPostPdfError422(BrapiPostPdfResponse422.fromJson(json as Map<String, dynamic>));
case 429:
final json = jsonDecode(response.body);
return BrapiPostPdfError429(BrapiPostPdfResponse429.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return BrapiPostPdfError500(BrapiPostPdfResponse500.fromJson(json as Map<String, dynamic>));
default:
return BrapiPostPdfErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class BrapiPostPdfError400 extends BrapiPostPdfError {const BrapiPostPdfError400(this.data);

/// The decoded response payload.
final BrapiPostPdfResponse400 data;

 }
/// Response for 422 (application/json).
final class BrapiPostPdfError422 extends BrapiPostPdfError {const BrapiPostPdfError422(this.data);

/// The decoded response payload.
final BrapiPostPdfResponse422 data;

 }
/// Response for 429 (application/json).
final class BrapiPostPdfError429 extends BrapiPostPdfError {const BrapiPostPdfError429(this.data);

/// The decoded response payload.
final BrapiPostPdfResponse429 data;

 }
/// Response for 500 (application/json).
final class BrapiPostPdfError500 extends BrapiPostPdfError {const BrapiPostPdfError500(this.data);

/// The decoded response payload.
final BrapiPostPdfResponse500 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class BrapiPostPdfErrorUnknown extends BrapiPostPdfError {const BrapiPostPdfErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
