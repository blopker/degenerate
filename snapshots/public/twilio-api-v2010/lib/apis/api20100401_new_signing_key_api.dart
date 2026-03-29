// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/account_new_signing_key.dart';import '../models/create_new_signing_key_request.dart';/// Api20100401NewSigningKeyApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class Api20100401NewSigningKeyApi with ApiExecutor {const Api20100401NewSigningKeyApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Create a new Signing Key for the account making the request.
///
/// `POST /2010-04-01/Accounts/{AccountSid}/SigningKeys.json`
Future<ApiResult<AccountNewSigningKey, Never>> createNewSigningKey({required String accountSid, CreateNewSigningKeyRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/x-www-form-urlencoded';

final request = ApiRequest(
  method: 'POST',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/SigningKeys.json',
  headers: headers,
  body: body == null ? null : [
    if (body.friendlyName case final friendlyName$?)
      'FriendlyName=${Uri.encodeQueryComponent(friendlyName$)}',
  ].join('&'),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountNewSigningKey.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
