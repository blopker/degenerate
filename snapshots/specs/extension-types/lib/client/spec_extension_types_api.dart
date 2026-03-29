// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
import '../apis/default_api.dart';

/// Root SDK client providing access to all API groups.
///
/// ```dart
/// final sdk = SpecExtensionTypesApi(ApiConfig(client: myClient));
/// sdk.$default.getUser();
/// ```
final class SpecExtensionTypesApi {
  final ApiConfig _config;

  SpecExtensionTypesApi(this._config);

  late final DefaultApi $default = DefaultApi(_config);
}
