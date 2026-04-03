// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class TlsCertificatesAndHostnamesCertificatePackValidationErrors {const TlsCertificatesAndHostnamesCertificatePackValidationErrors({this.message});

factory TlsCertificatesAndHostnamesCertificatePackValidationErrors.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesCertificatePackValidationErrors(
  message: json['message'] as String?,
); }

/// A domain validation error.
final String? message;

Map<String, dynamic> toJson() { return {
  'message': ?message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'message'}.contains(key)); } 
TlsCertificatesAndHostnamesCertificatePackValidationErrors copyWith({String Function()? message}) { return TlsCertificatesAndHostnamesCertificatePackValidationErrors(
  message: message != null ? message() : this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesCertificatePackValidationErrors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesCertificatePackValidationErrors(message: $message)'; } 
 }
