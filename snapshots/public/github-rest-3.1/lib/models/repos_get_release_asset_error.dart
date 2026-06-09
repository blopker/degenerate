// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /repos/{owner}/{repo}/releases/assets/{asset_id}`.
sealed class ReposGetReleaseAssetError {const ReposGetReleaseAssetError();

/// Parse the variant matching the response status code.
factory ReposGetReleaseAssetError.parse(ApiResponse response) { return switch (response.statusCode) {
  302 => ReposGetReleaseAssetError302.parse(response),
  404 => ReposGetReleaseAssetError404.parse(response),
  _ => ReposGetReleaseAssetError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `302` response.
@immutable final class ReposGetReleaseAssetError302 extends ReposGetReleaseAssetError {const ReposGetReleaseAssetError302();

factory ReposGetReleaseAssetError302.parse(ApiResponse _) { return const ReposGetReleaseAssetError302(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ReposGetReleaseAssetError302; } 
@override int get hashCode { return (ReposGetReleaseAssetError302).hashCode; } 
@override String toString() { return 'ReposGetReleaseAssetError302()'; } 
 }
/// The `404` response.
@immutable final class ReposGetReleaseAssetError404 extends ReposGetReleaseAssetError {const ReposGetReleaseAssetError404(this.data);

factory ReposGetReleaseAssetError404.parse(ApiResponse response) { return ReposGetReleaseAssetError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetReleaseAssetError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposGetReleaseAssetError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposGetReleaseAssetError$Unknown extends ReposGetReleaseAssetError {const ReposGetReleaseAssetError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetReleaseAssetError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposGetReleaseAssetError.unknown($statusCode)'; } 
 }
