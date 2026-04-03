// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
import '../apis/core_api.dart';
import 'pub_kubernetes_api_v1_openapi_security.dart';

/// Root SDK client providing access to all API groups.
///
/// ```dart
/// final sdk = OpenapiApi(ApiConfig(client: myClient));
/// sdk.core.getCoreV1ApiResources();
/// ```
final class OpenapiApi {
  OpenapiApi(this._config);

  final ApiConfig _config;

  late final CoreApi core = CoreApi(_config);

  OpenapiApi withBearerToken(String value) => OpenapiApi(OpenapiSecurity.applyBearerToken(_config, value));
}
