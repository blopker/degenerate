// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
import '../apis/default_api.dart';

/// Root SDK client providing access to all API groups.
///
/// ```dart
/// final sdk = Spec11CircularApi(ApiConfig(client: myClient));
/// sdk.$default.listEmployees();
/// ```
final class Spec11CircularApi {
  static const defaultBaseUrl = 'https://api.example.com/v1';

  final ApiConfig _config;

  Spec11CircularApi(this._config);

  late final DefaultApi $default = DefaultApi(_config);
}
