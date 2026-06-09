// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error responses of `POST /app-manifests/{code}/conversions`.
sealed class AppsCreateFromManifestError {const AppsCreateFromManifestError();

/// Parse the variant matching the response status code.
factory AppsCreateFromManifestError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => AppsCreateFromManifestError404.parse(response),
  422 => AppsCreateFromManifestError422.parse(response),
  _ => AppsCreateFromManifestError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class AppsCreateFromManifestError404 extends AppsCreateFromManifestError {const AppsCreateFromManifestError404(this.data);

factory AppsCreateFromManifestError404.parse(ApiResponse response) { return AppsCreateFromManifestError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsCreateFromManifestError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsCreateFromManifestError404($data)'; } 
 }
/// The `422` response.
@immutable final class AppsCreateFromManifestError422 extends AppsCreateFromManifestError {const AppsCreateFromManifestError422(this.data);

factory AppsCreateFromManifestError422.parse(ApiResponse response) { return AppsCreateFromManifestError422(ValidationErrorSimple.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationErrorSimple data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsCreateFromManifestError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsCreateFromManifestError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AppsCreateFromManifestError$Unknown extends AppsCreateFromManifestError {const AppsCreateFromManifestError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsCreateFromManifestError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AppsCreateFromManifestError.unknown($statusCode)'; } 
 }
