// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
import '../apis/blog_api.dart';
import '../apis/default_api.dart';
import '../apis/meetings_api.dart';
import '../apis/rooms_api.dart';
import '../apis/spaces_api.dart';
import '../apis/users_api.dart';
import 'pub_totem_mobile_security.dart';

/// Root SDK client providing access to all API groups.
///
/// ```dart
/// final sdk = PubTotemMobileApi(ApiConfig(client: myClient));
/// sdk.$default.totemApiMobileApiRegisterFcmToken();
/// ```
final class PubTotemMobileApi {
  PubTotemMobileApi(this._config);

  final ApiConfig _config;

  late final DefaultApi $default = DefaultApi(_config);
  late final UsersApi users = UsersApi(_config);
  late final SpacesApi spaces = SpacesApi(_config);
  late final BlogApi blog = BlogApi(_config);
  late final MeetingsApi meetings = MeetingsApi(_config);
  late final RoomsApi rooms = RoomsApi(_config);

  PubTotemMobileApi withJWTAuth(String token) =>
      PubTotemMobileApi(PubTotemMobileSecurity.applyJWTAuth(_config, token));
}
