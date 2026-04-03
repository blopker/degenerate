// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
import '../apis/default_api.dart';

/// Root SDK client providing access to all API groups.
///
/// ```dart
/// final sdk = Spec12UnionsApi(ApiConfig(client: myClient));
/// sdk.$default.listShapes();
/// ```
final class Spec12UnionsApi {
  Spec12UnionsApi(this._config);

  static const defaultBaseUrl = 'https://api.example.com/v1';

  final ApiConfig _config;

  late final DefaultApi $default = DefaultApi(_config);
}
