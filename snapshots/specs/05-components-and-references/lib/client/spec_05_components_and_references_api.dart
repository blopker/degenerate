// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
import '../apis/default_api.dart';
import 'spec_05_components_and_references_security.dart';

/// Root SDK client providing access to all API groups.
///
/// ```dart
/// final sdk = Spec05ComponentsAndReferencesApi(ApiConfig(client: myClient));
/// sdk.$default.listUsers();
/// ```
final class Spec05ComponentsAndReferencesApi {
  Spec05ComponentsAndReferencesApi(this._config);

  final ApiConfig _config;

  late final DefaultApi $default = DefaultApi(_config);

  Spec05ComponentsAndReferencesApi withBearerAuth(String token) => Spec05ComponentsAndReferencesApi(Spec05ComponentsAndReferencesSecurity.applyBearerAuth(_config, token));
}
