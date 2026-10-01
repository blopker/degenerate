// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
import '../apis/default_api.dart';
import 'spec_16_exotic_security_security.dart';

/// Root SDK client providing access to all API groups.
///
/// ```dart
/// final sdk = Spec16ExoticSecurityApi(ApiConfig(client: myClient));
/// sdk.$default.secureRead();
/// ```
final class Spec16ExoticSecurityApi {
  Spec16ExoticSecurityApi(this._config);

  final ApiConfig _config;

  late final DefaultApi $default = DefaultApi(_config);

  Spec16ExoticSecurityApi withCookieAuth(String value) => Spec16ExoticSecurityApi(Spec16ExoticSecuritySecurity.applyCookieAuth(_config, value));
  Spec16ExoticSecurityApi withQueryAuth(String value) => Spec16ExoticSecurityApi(Spec16ExoticSecuritySecurity.applyQueryAuth(_config, value));
}
