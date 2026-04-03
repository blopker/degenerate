// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
import '../apis/default_api.dart';
import 'spec_06_security_schemes_and_requirements_security.dart';

/// Root SDK client providing access to all API groups.
///
/// ```dart
/// final sdk = Spec06SecuritySchemesAndRequirementsApi(ApiConfig(client: myClient));
/// sdk.$default.secureRead();
/// ```
final class Spec06SecuritySchemesAndRequirementsApi {
  Spec06SecuritySchemesAndRequirementsApi(this._config);

  final ApiConfig _config;

  late final DefaultApi $default = DefaultApi(_config);

  Spec06SecuritySchemesAndRequirementsApi withApiKeyAuth(String value) => Spec06SecuritySchemesAndRequirementsApi(Spec06SecuritySchemesAndRequirementsSecurity.applyApiKeyAuth(_config, value));
  Spec06SecuritySchemesAndRequirementsApi withHttpBasic({required String username, required String password}) => Spec06SecuritySchemesAndRequirementsApi(Spec06SecuritySchemesAndRequirementsSecurity.applyHttpBasic(_config, username: username, password: password));
  Spec06SecuritySchemesAndRequirementsApi withHttpBearer(String token) => Spec06SecuritySchemesAndRequirementsApi(Spec06SecuritySchemesAndRequirementsSecurity.applyHttpBearer(_config, token));
}
