// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /repos/{owner}/{repo}/actions/artifacts/{artifact_id}/{archive_format}`.
sealed class ActionsDownloadArtifactError {const ActionsDownloadArtifactError();

/// Parse the variant matching the response status code.
factory ActionsDownloadArtifactError.parse(ApiResponse response) { return switch (response.statusCode) {
  302 => ActionsDownloadArtifactError302.parse(response),
  410 => ActionsDownloadArtifactError410.parse(response),
  _ => ActionsDownloadArtifactError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `302` response.
@immutable final class ActionsDownloadArtifactError302 extends ActionsDownloadArtifactError {const ActionsDownloadArtifactError302();

factory ActionsDownloadArtifactError302.parse(ApiResponse _) { return const ActionsDownloadArtifactError302(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ActionsDownloadArtifactError302; } 
@override int get hashCode { return (ActionsDownloadArtifactError302).hashCode; } 
@override String toString() { return 'ActionsDownloadArtifactError302()'; } 
 }
/// The `410` response.
@immutable final class ActionsDownloadArtifactError410 extends ActionsDownloadArtifactError {const ActionsDownloadArtifactError410(this.data);

factory ActionsDownloadArtifactError410.parse(ApiResponse response) { return ActionsDownloadArtifactError410(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsDownloadArtifactError410 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsDownloadArtifactError410($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActionsDownloadArtifactError$Unknown extends ActionsDownloadArtifactError {const ActionsDownloadArtifactError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsDownloadArtifactError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActionsDownloadArtifactError.unknown($statusCode)'; } 
 }
