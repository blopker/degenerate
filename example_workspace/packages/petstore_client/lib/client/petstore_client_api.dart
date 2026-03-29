// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
import 'petstore_client_security.dart';
import '../apis/pet_api.dart';
import '../apis/store_api.dart';
import '../apis/user_api.dart';

/// Root SDK client providing access to all API groups.
///
/// ```dart
/// final sdk = PetstoreClientApi(ApiConfig(client: myClient));
/// sdk.pet.addPet();
/// ```
final class PetstoreClientApi {
  static const defaultBaseUrl = '/api/v3';

  final ApiConfig _config;

  PetstoreClientApi(this._config);

  late final PetApi pet = PetApi(_config);
  late final StoreApi store = StoreApi(_config);
  late final UserApi user = UserApi(_config);

  PetstoreClientApi withApiKey(String value) => PetstoreClientApi(PetstoreClientSecurity.applyApiKey(_config, value));
}
