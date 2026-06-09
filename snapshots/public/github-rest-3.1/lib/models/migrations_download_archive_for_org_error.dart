// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /orgs/{org}/migrations/{migration_id}/archive`.
sealed class MigrationsDownloadArchiveForOrgError {const MigrationsDownloadArchiveForOrgError();

/// Parse the variant matching the response status code.
factory MigrationsDownloadArchiveForOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  302 => MigrationsDownloadArchiveForOrgError302.parse(response),
  404 => MigrationsDownloadArchiveForOrgError404.parse(response),
  _ => MigrationsDownloadArchiveForOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `302` response.
@immutable final class MigrationsDownloadArchiveForOrgError302 extends MigrationsDownloadArchiveForOrgError {const MigrationsDownloadArchiveForOrgError302();

factory MigrationsDownloadArchiveForOrgError302.parse(ApiResponse _) { return const MigrationsDownloadArchiveForOrgError302(); }

@override bool operator ==(Object other) { return identical(this, other) || other is MigrationsDownloadArchiveForOrgError302; } 
@override int get hashCode { return (MigrationsDownloadArchiveForOrgError302).hashCode; } 
@override String toString() { return 'MigrationsDownloadArchiveForOrgError302()'; } 
 }
/// The `404` response.
@immutable final class MigrationsDownloadArchiveForOrgError404 extends MigrationsDownloadArchiveForOrgError {const MigrationsDownloadArchiveForOrgError404(this.data);

factory MigrationsDownloadArchiveForOrgError404.parse(ApiResponse response) { return MigrationsDownloadArchiveForOrgError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsDownloadArchiveForOrgError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'MigrationsDownloadArchiveForOrgError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class MigrationsDownloadArchiveForOrgError$Unknown extends MigrationsDownloadArchiveForOrgError {const MigrationsDownloadArchiveForOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsDownloadArchiveForOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'MigrationsDownloadArchiveForOrgError.unknown($statusCode)'; } 
 }
