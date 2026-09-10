// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_links_response400.dart';import 'brapi_post_links_response422.dart';import 'brapi_post_links_response429.dart';import 'brapi_post_links_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class BrapiPostLinksError {const BrapiPostLinksError();

/// Decodes the payload for its declared status and content type.
static BrapiPostLinksError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  BrapiPostLinksError400(BrapiPostLinksResponse400.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  BrapiPostLinksError422(BrapiPostLinksResponse422.fromJson(json as Map<String, dynamic>));case 429:
final json = jsonDecode(response.body);
return  BrapiPostLinksError429(BrapiPostLinksResponse429.fromJson(json as Map<String, dynamic>));case 500:
final json = jsonDecode(response.body);
return  BrapiPostLinksError500(BrapiPostLinksResponse500.fromJson(json as Map<String, dynamic>));default:
return  BrapiPostLinksErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class BrapiPostLinksError400 extends BrapiPostLinksError {const BrapiPostLinksError400(this.data);

/// The decoded response payload.
final BrapiPostLinksResponse400 data;

}
/// Response for 422 (application/json).
final class BrapiPostLinksError422 extends BrapiPostLinksError {const BrapiPostLinksError422(this.data);

/// The decoded response payload.
final BrapiPostLinksResponse422 data;

}
/// Response for 429 (application/json).
final class BrapiPostLinksError429 extends BrapiPostLinksError {const BrapiPostLinksError429(this.data);

/// The decoded response payload.
final BrapiPostLinksResponse429 data;

}
/// Response for 500 (application/json).
final class BrapiPostLinksError500 extends BrapiPostLinksError {const BrapiPostLinksError500(this.data);

/// The decoded response payload.
final BrapiPostLinksResponse500 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class BrapiPostLinksErrorUnknown extends BrapiPostLinksError {const BrapiPostLinksErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
