// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_snapshot_response400.dart';import 'brapi_post_snapshot_response422.dart';import 'brapi_post_snapshot_response429.dart';import 'brapi_post_snapshot_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class BrapiPostSnapshotError {const BrapiPostSnapshotError();

/// Decodes the payload for its declared status and content type.
static BrapiPostSnapshotError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return BrapiPostSnapshotError400(BrapiPostSnapshotResponse400.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return BrapiPostSnapshotError422(BrapiPostSnapshotResponse422.fromJson(json as Map<String, dynamic>));
case 429:
final json = jsonDecode(response.body);
return BrapiPostSnapshotError429(BrapiPostSnapshotResponse429.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return BrapiPostSnapshotError500(BrapiPostSnapshotResponse500.fromJson(json as Map<String, dynamic>));
default:
return BrapiPostSnapshotErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class BrapiPostSnapshotError400 extends BrapiPostSnapshotError {const BrapiPostSnapshotError400(this.data);

/// The decoded response payload.
final BrapiPostSnapshotResponse400 data;

 }
/// Response for 422 (application/json).
final class BrapiPostSnapshotError422 extends BrapiPostSnapshotError {const BrapiPostSnapshotError422(this.data);

/// The decoded response payload.
final BrapiPostSnapshotResponse422 data;

 }
/// Response for 429 (application/json).
final class BrapiPostSnapshotError429 extends BrapiPostSnapshotError {const BrapiPostSnapshotError429(this.data);

/// The decoded response payload.
final BrapiPostSnapshotResponse429 data;

 }
/// Response for 500 (application/json).
final class BrapiPostSnapshotError500 extends BrapiPostSnapshotError {const BrapiPostSnapshotError500(this.data);

/// The decoded response payload.
final BrapiPostSnapshotResponse500 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class BrapiPostSnapshotErrorUnknown extends BrapiPostSnapshotError {const BrapiPostSnapshotErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
