// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class PrivateRegistriesCreateOrgPrivateRegistryError {const PrivateRegistriesCreateOrgPrivateRegistryError();

/// Decodes the payload for its declared status and content type.
static PrivateRegistriesCreateOrgPrivateRegistryError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return PrivateRegistriesCreateOrgPrivateRegistryError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return PrivateRegistriesCreateOrgPrivateRegistryError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return PrivateRegistriesCreateOrgPrivateRegistryErrorUnknown(response);
}
}
}
/// Response for 404 (application/json).
final class PrivateRegistriesCreateOrgPrivateRegistryError404 extends PrivateRegistriesCreateOrgPrivateRegistryError {const PrivateRegistriesCreateOrgPrivateRegistryError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class PrivateRegistriesCreateOrgPrivateRegistryError422 extends PrivateRegistriesCreateOrgPrivateRegistryError {const PrivateRegistriesCreateOrgPrivateRegistryError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class PrivateRegistriesCreateOrgPrivateRegistryErrorUnknown extends PrivateRegistriesCreateOrgPrivateRegistryError {const PrivateRegistriesCreateOrgPrivateRegistryErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
