// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'contributor.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class ReposListContributorsSuccess {const ReposListContributorsSuccess();

/// Decodes the payload for its declared status and content type.
static ReposListContributorsSuccess parse(ApiResponse response) { switch (response.statusCode) {
case 200:
final json = jsonDecode(response.body);
return ReposListContributorsSuccess200((json as List<dynamic>).map((e) => Contributor.fromJson(e as Map<String, dynamic>)).toList());
case 204:
return const ReposListContributorsSuccess204();
default:
return ReposListContributorsSuccessUnknown(response);
}
 } 
 }
/// Response for 200 (application/json).
final class ReposListContributorsSuccess200 extends ReposListContributorsSuccess {const ReposListContributorsSuccess200(this.data);

/// The decoded response payload.
final List<Contributor> data;

 }
/// Response for 204.
final class ReposListContributorsSuccess204 extends ReposListContributorsSuccess {const ReposListContributorsSuccess204();

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ReposListContributorsSuccessUnknown extends ReposListContributorsSuccess {const ReposListContributorsSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
