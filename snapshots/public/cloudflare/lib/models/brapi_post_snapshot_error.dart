// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_snapshot_response400.dart';import 'brapi_post_snapshot_response422.dart';import 'brapi_post_snapshot_response429.dart';import 'brapi_post_snapshot_response500.dart';/// Error responses of `POST /accounts/{account_id}/browser-rendering/snapshot`.
sealed class BrapiPostSnapshotError {const BrapiPostSnapshotError();

/// Parse the variant matching the response status code.
factory BrapiPostSnapshotError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => BrapiPostSnapshotError400.parse(response),
  422 => BrapiPostSnapshotError422.parse(response),
  429 => BrapiPostSnapshotError429.parse(response),
  500 => BrapiPostSnapshotError500.parse(response),
  _ => BrapiPostSnapshotError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class BrapiPostSnapshotError400 extends BrapiPostSnapshotError {const BrapiPostSnapshotError400(this.data);

factory BrapiPostSnapshotError400.parse(ApiResponse response) { return BrapiPostSnapshotError400(BrapiPostSnapshotResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostSnapshotResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostSnapshotError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostSnapshotError400($data)'; } 
 }
/// The `422` response.
@immutable final class BrapiPostSnapshotError422 extends BrapiPostSnapshotError {const BrapiPostSnapshotError422(this.data);

factory BrapiPostSnapshotError422.parse(ApiResponse response) { return BrapiPostSnapshotError422(BrapiPostSnapshotResponse422.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostSnapshotResponse422 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostSnapshotError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostSnapshotError422($data)'; } 
 }
/// The `429` response.
@immutable final class BrapiPostSnapshotError429 extends BrapiPostSnapshotError {const BrapiPostSnapshotError429(this.data);

factory BrapiPostSnapshotError429.parse(ApiResponse response) { return BrapiPostSnapshotError429(BrapiPostSnapshotResponse429.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostSnapshotResponse429 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostSnapshotError429 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostSnapshotError429($data)'; } 
 }
/// The `500` response.
@immutable final class BrapiPostSnapshotError500 extends BrapiPostSnapshotError {const BrapiPostSnapshotError500(this.data);

factory BrapiPostSnapshotError500.parse(ApiResponse response) { return BrapiPostSnapshotError500(BrapiPostSnapshotResponse500.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostSnapshotResponse500 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostSnapshotError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostSnapshotError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class BrapiPostSnapshotError$Unknown extends BrapiPostSnapshotError {const BrapiPostSnapshotError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostSnapshotError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'BrapiPostSnapshotError.unknown($statusCode)'; } 
 }
