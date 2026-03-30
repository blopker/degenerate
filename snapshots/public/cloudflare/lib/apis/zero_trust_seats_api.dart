// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_identifier.dart';import '../models/access_seat.dart';import '../models/access_seats.dart';/// ZeroTrustSeatsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZeroTrustSeatsApi with ApiExecutor {const ZeroTrustSeatsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Update a user seat
///
/// Removes a user from a Zero Trust seat when both `access_seat` and `gateway_seat` are set to false.
///
/// `PATCH /accounts/{account_id}/access/seats`
Future<ApiResult<List<AccessSeats>?, Never>> zeroTrustSeatsUpdateAUserSeat({required AccessIdentifier accountId, required List<AccessSeat> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/seats',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => AccessSeats.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
 }
