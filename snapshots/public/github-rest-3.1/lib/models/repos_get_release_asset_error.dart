// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposGetReleaseAssetError {const ReposGetReleaseAssetError();

/// Decodes the payload for its declared status and content type.
static ReposGetReleaseAssetError parse(ApiResponse response) {switch (response.statusCode) {
case 302:
return  const ReposGetReleaseAssetError302();case 404:
final json = jsonDecode(response.body);
return  ReposGetReleaseAssetError404(BasicError.fromJson(json as Map<String, dynamic>));default:
return  ReposGetReleaseAssetErrorUnknown(response); }}
}
/// Response for 302.
final class ReposGetReleaseAssetError302 extends ReposGetReleaseAssetError {const ReposGetReleaseAssetError302();

}
/// Response for 404 (application/json).
final class ReposGetReleaseAssetError404 extends ReposGetReleaseAssetError {const ReposGetReleaseAssetError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposGetReleaseAssetErrorUnknown extends ReposGetReleaseAssetError {const ReposGetReleaseAssetErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
