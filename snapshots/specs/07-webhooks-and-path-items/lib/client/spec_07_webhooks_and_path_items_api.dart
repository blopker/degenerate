// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
import '../apis/default_api.dart';

/// Root SDK client providing access to all API groups.
///
/// ```dart
/// final sdk = Spec07WebhooksAndPathItemsApi(ApiConfig(client: myClient));
/// sdk.$default.getHealth();
/// ```
final class Spec07WebhooksAndPathItemsApi {
  Spec07WebhooksAndPathItemsApi(this._config);

  final ApiConfig _config;

  late final DefaultApi $default = DefaultApi(_config);
}
