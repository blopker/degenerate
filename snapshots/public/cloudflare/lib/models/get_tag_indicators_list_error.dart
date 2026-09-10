// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_tag_indicators_list_response400.dart';import 'get_tag_indicators_list_response404.dart';import 'get_tag_indicators_list_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GetTagIndicatorsListError {const GetTagIndicatorsListError();

/// Decodes the payload for its declared status and content type.
static GetTagIndicatorsListError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return GetTagIndicatorsListError400(GetTagIndicatorsListResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return GetTagIndicatorsListError404(GetTagIndicatorsListResponse404.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return GetTagIndicatorsListError500(GetTagIndicatorsListResponse500.fromJson(json as Map<String, dynamic>));
default:
return GetTagIndicatorsListErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class GetTagIndicatorsListError400 extends GetTagIndicatorsListError {const GetTagIndicatorsListError400(this.data);

/// The decoded response payload.
final GetTagIndicatorsListResponse400 data;

}
/// Response for 404 (application/json).
final class GetTagIndicatorsListError404 extends GetTagIndicatorsListError {const GetTagIndicatorsListError404(this.data);

/// The decoded response payload.
final GetTagIndicatorsListResponse404 data;

}
/// Response for 500 (application/json).
final class GetTagIndicatorsListError500 extends GetTagIndicatorsListError {const GetTagIndicatorsListError500(this.data);

/// The decoded response payload.
final GetTagIndicatorsListResponse500 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class GetTagIndicatorsListErrorUnknown extends GetTagIndicatorsListError {const GetTagIndicatorsListErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
