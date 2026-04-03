// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
import '../apis/class_api.dart';
import '../apis/default_api.dart';
import '../apis/incidents_api.dart';
import 'pub_unhinged_security.dart';

/// Root SDK client providing access to all API groups.
///
/// ```dart
/// final sdk = PubUnhingedApi(ApiConfig(client: myClient));
/// sdk.incidents.listIncidentsV2draft();
/// ```
final class PubUnhingedApi {
  PubUnhingedApi(this._config);

  static const defaultBaseUrl = 'https://api.bplm.gov/v6';

  final ApiConfig _config;

  late final IncidentsApi incidents = IncidentsApi(_config);
  late final DefaultApi $default = DefaultApi(_config);
  late final ClassApi $class = ClassApi(_config);

  PubUnhingedApi withEctoplasmToken(String token) =>
      PubUnhingedApi(PubUnhingedSecurity.applyEctoplasmToken(_config, token));
  PubUnhingedApi withEctoplasmTokenLegacy({
    required String username,
    required String password,
  }) => PubUnhingedApi(
    PubUnhingedSecurity.applyEctoplasmTokenLegacy(
      _config,
      username: username,
      password: password,
    ),
  );
}
