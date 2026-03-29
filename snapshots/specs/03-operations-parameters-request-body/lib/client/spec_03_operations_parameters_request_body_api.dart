// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
import '../apis/items_api.dart';

/// Root SDK client providing access to all API groups.
///
/// ```dart
/// final sdk = Spec03OperationsParametersRequestBodyApi(ApiConfig(client: myClient));
/// sdk.items.getItem();
/// ```
final class Spec03OperationsParametersRequestBodyApi {
  final ApiConfig _config;

  Spec03OperationsParametersRequestBodyApi(this._config);

  late final ItemsApi items = ItemsApi(_config);
}
