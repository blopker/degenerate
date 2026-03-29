// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
import '../apis/pets_api.dart';

/// Root SDK client providing access to all API groups.
///
/// ```dart
/// final sdk = $0OaiApi(ApiConfig(client: myClient));
/// sdk.pets.listPets();
/// ```
final class $0OaiApi {
  static const defaultBaseUrl = 'http://petstore.swagger.io/v1';

  final ApiConfig _config;

  $0OaiApi(this._config);

  late final PetsApi pets = PetsApi(_config);
}
