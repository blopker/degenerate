// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_scrape_response400.dart';import 'brapi_post_scrape_response422.dart';import 'brapi_post_scrape_response429.dart';import 'brapi_post_scrape_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class BrapiPostScrapeError {const BrapiPostScrapeError();

/// Decodes the payload for its declared status and content type.
static BrapiPostScrapeError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return BrapiPostScrapeError400(BrapiPostScrapeResponse400.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return BrapiPostScrapeError422(BrapiPostScrapeResponse422.fromJson(json as Map<String, dynamic>));
case 429:
final json = jsonDecode(response.body);
return BrapiPostScrapeError429(BrapiPostScrapeResponse429.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return BrapiPostScrapeError500(BrapiPostScrapeResponse500.fromJson(json as Map<String, dynamic>));
default:
return BrapiPostScrapeErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class BrapiPostScrapeError400 extends BrapiPostScrapeError {const BrapiPostScrapeError400(this.data);

/// The decoded response payload.
final BrapiPostScrapeResponse400 data;

 }
/// Response for 422 (application/json).
final class BrapiPostScrapeError422 extends BrapiPostScrapeError {const BrapiPostScrapeError422(this.data);

/// The decoded response payload.
final BrapiPostScrapeResponse422 data;

 }
/// Response for 429 (application/json).
final class BrapiPostScrapeError429 extends BrapiPostScrapeError {const BrapiPostScrapeError429(this.data);

/// The decoded response payload.
final BrapiPostScrapeResponse429 data;

 }
/// Response for 500 (application/json).
final class BrapiPostScrapeError500 extends BrapiPostScrapeError {const BrapiPostScrapeError500(this.data);

/// The decoded response payload.
final BrapiPostScrapeResponse500 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class BrapiPostScrapeErrorUnknown extends BrapiPostScrapeError {const BrapiPostScrapeErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
