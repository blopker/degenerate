// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
import '../apis/default_api.dart';
import '../apis/events_api.dart';
import '../apis/spaces_api.dart';

/// Root SDK client providing access to all API groups.
///
/// ```dart
/// final sdk = PubTotemWebApi(ApiConfig(client: myClient));
/// sdk.$default.totemApiCurrentUser();
/// ```
final class PubTotemWebApi {
  PubTotemWebApi(this._config);

  final ApiConfig _config;

  late final DefaultApi $default = DefaultApi(_config);
  late final EventsApi events = EventsApi(_config);
  late final SpacesApi spaces = SpacesApi(_config);
}
