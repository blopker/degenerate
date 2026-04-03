// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/account_token.dart';import '../models/create_token_request.dart';/// Api20100401TokenApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class Api20100401TokenApi with ApiExecutor {const Api20100401TokenApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Create a new token for ICE servers
///
/// `POST /2010-04-01/Accounts/{AccountSid}/Tokens.json`
Future<ApiResult<AccountToken, Never>> createToken({required String accountSid, CreateTokenRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/x-www-form-urlencoded';

final request = ApiRequest(
  method: 'POST',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Tokens.json',
  headers: headers,
  body: body == null ? null : <String>[
    if (body.ttl case final ttl$?)
      'Ttl=${Uri.encodeQueryComponent(ttl$.toString())}',
  ].join('&'),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountToken.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
