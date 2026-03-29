// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
import '../apis/pets_api.dart';

/// Root SDK client providing access to all API groups.
///
/// ```dart
/// final sdk = Spec13ExternalRefsApi(ApiConfig(client: myClient));
/// sdk.pets.listPets();
/// ```
final class Spec13ExternalRefsApi {
  static const defaultBaseUrl = 'https://petstore.example.com/v1';

  final ApiConfig _config;

  Spec13ExternalRefsApi(this._config);

  late final PetsApi pets = PetsApi(_config);
}
