// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class ReposGetPunchCardStatsSuccess {const ReposGetPunchCardStatsSuccess();

/// Decodes the payload for its declared status and content type.
static ReposGetPunchCardStatsSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 200:
final json = jsonDecode(response.body);
return  ReposGetPunchCardStatsSuccess200((json as List<dynamic>).map((e) => (e as List<dynamic>).map((e) => (e as num).toInt()).toList()).toList());case 204:
return  const ReposGetPunchCardStatsSuccess204();default:
return  ReposGetPunchCardStatsSuccessUnknown(response); }}
}
/// Response for 200 (application/json).
final class ReposGetPunchCardStatsSuccess200 extends ReposGetPunchCardStatsSuccess {const ReposGetPunchCardStatsSuccess200(this.data);

/// The decoded response payload.
final List<List<int>> data;

}
/// Response for 204.
final class ReposGetPunchCardStatsSuccess204 extends ReposGetPunchCardStatsSuccess {const ReposGetPunchCardStatsSuccess204();

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposGetPunchCardStatsSuccessUnknown extends ReposGetPunchCardStatsSuccess {const ReposGetPunchCardStatsSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
