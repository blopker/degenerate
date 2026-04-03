// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
import '../apis/default_api.dart';

/// Root SDK client providing access to all API groups.
///
/// ```dart
/// final sdk = Spec01MinimalApi(ApiConfig(client: myClient));
/// sdk.$default.ping();
/// ```
final class Spec01MinimalApi {
  Spec01MinimalApi(this._config);

  final ApiConfig _config;

  late final DefaultApi $default = DefaultApi(_config);
}
