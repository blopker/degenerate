// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
import '../apis/default_api.dart';

/// Root SDK client providing access to all API groups.
///
/// ```dart
/// final sdk = Spec15MergePatchApi(ApiConfig(client: myClient));
/// sdk.$default.getUser();
/// ```
final class Spec15MergePatchApi {
  Spec15MergePatchApi(this._config);

  final ApiConfig _config;

  late final DefaultApi $default = DefaultApi(_config);
}
