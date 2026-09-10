// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/account_message_media.dart';/// Api20100401MediaInstanceApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class Api20100401MediaInstanceApi with ApiExecutor {const Api20100401MediaInstanceApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Fetch a single Media resource associated with a specific Message resource
///
/// `GET /2010-04-01/Accounts/{AccountSid}/Messages/{MessageSid}/Media/{Sid}.json`
Future<ApiResult<AccountMessageMedia, Never>> fetchMedia({required String accountSid, required String messageSid, required String sid, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Messages/${Uri.encodeComponent(messageSid)}/Media/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return AccountMessageMedia.fromJson(json as Map<String, dynamic>);
  },
);
}
/// Delete the Media resource.
///
/// `DELETE /2010-04-01/Accounts/{AccountSid}/Messages/{MessageSid}/Media/{Sid}.json`
Future<ApiResult<void, Never>> deleteMedia({required String accountSid, required String messageSid, required String sid, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Messages/${Uri.encodeComponent(messageSid)}/Media/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (_) {},
);
}
}
