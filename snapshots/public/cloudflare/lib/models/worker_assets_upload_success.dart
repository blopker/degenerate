// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_completed_upload_assets_response.dart';import 'workers_upload_assets_response.dart';/// Success responses of `POST /accounts/{account_id}/workers/assets/upload`.
sealed class WorkerAssetsUploadSuccess {const WorkerAssetsUploadSuccess();

/// Parse the variant matching the response status code.
factory WorkerAssetsUploadSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  201 => WorkerAssetsUploadSuccess201.parse(response),
  202 => WorkerAssetsUploadSuccess202.parse(response),
  _ => WorkerAssetsUploadSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `201` response.
@immutable final class WorkerAssetsUploadSuccess201 extends WorkerAssetsUploadSuccess {const WorkerAssetsUploadSuccess201(this.data);

factory WorkerAssetsUploadSuccess201.parse(ApiResponse response) { return WorkerAssetsUploadSuccess201(WorkersCompletedUploadAssetsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorkersCompletedUploadAssetsResponse data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkerAssetsUploadSuccess201 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorkerAssetsUploadSuccess201($data)'; } 
 }
/// The `202` response.
@immutable final class WorkerAssetsUploadSuccess202 extends WorkerAssetsUploadSuccess {const WorkerAssetsUploadSuccess202(this.data);

factory WorkerAssetsUploadSuccess202.parse(ApiResponse response) { return WorkerAssetsUploadSuccess202(WorkersUploadAssetsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorkersUploadAssetsResponse data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkerAssetsUploadSuccess202 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorkerAssetsUploadSuccess202($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class WorkerAssetsUploadSuccess$Unknown extends WorkerAssetsUploadSuccess {const WorkerAssetsUploadSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkerAssetsUploadSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'WorkerAssetsUploadSuccess.unknown($statusCode)'; } 
 }
