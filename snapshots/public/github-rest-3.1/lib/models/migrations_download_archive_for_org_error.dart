// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class MigrationsDownloadArchiveForOrgError {const MigrationsDownloadArchiveForOrgError();

/// Decodes the payload for its declared status and content type.
static MigrationsDownloadArchiveForOrgError parse(ApiResponse response) {switch (response.statusCode) {
case 302:
return const MigrationsDownloadArchiveForOrgError302();
case 404:
final json = jsonDecode(response.body);
return MigrationsDownloadArchiveForOrgError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return MigrationsDownloadArchiveForOrgErrorUnknown(response);
}
}
}
/// Response for 302.
final class MigrationsDownloadArchiveForOrgError302 extends MigrationsDownloadArchiveForOrgError {const MigrationsDownloadArchiveForOrgError302();

}
/// Response for 404 (application/json).
final class MigrationsDownloadArchiveForOrgError404 extends MigrationsDownloadArchiveForOrgError {const MigrationsDownloadArchiveForOrgError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class MigrationsDownloadArchiveForOrgErrorUnknown extends MigrationsDownloadArchiveForOrgError {const MigrationsDownloadArchiveForOrgErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
