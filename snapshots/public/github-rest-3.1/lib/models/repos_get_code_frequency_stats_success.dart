// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class ReposGetCodeFrequencyStatsSuccess {const ReposGetCodeFrequencyStatsSuccess();

/// Decodes the payload for its declared status and content type.
static ReposGetCodeFrequencyStatsSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 200:
final json = jsonDecode(response.body);
return ReposGetCodeFrequencyStatsSuccess200((json as List<dynamic>).map((e) => (e as List<dynamic>).map((e) => (e as num).toInt()).toList()).toList());
case 202:
final json = jsonDecode(response.body);
return ReposGetCodeFrequencyStatsSuccess202(json as Map<String, dynamic>);
case 204:
return const ReposGetCodeFrequencyStatsSuccess204();
default:
return ReposGetCodeFrequencyStatsSuccessUnknown(response);
}
}
}
/// Response for 200 (application/json).
final class ReposGetCodeFrequencyStatsSuccess200 extends ReposGetCodeFrequencyStatsSuccess {const ReposGetCodeFrequencyStatsSuccess200(this.data);

/// The decoded response payload.
final List<List<int>> data;

}
/// Response for 202 (application/json).
final class ReposGetCodeFrequencyStatsSuccess202 extends ReposGetCodeFrequencyStatsSuccess {const ReposGetCodeFrequencyStatsSuccess202(this.data);

/// The decoded response payload.
final Map<String, dynamic> data;

}
/// Response for 204.
final class ReposGetCodeFrequencyStatsSuccess204 extends ReposGetCodeFrequencyStatsSuccess {const ReposGetCodeFrequencyStatsSuccess204();

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposGetCodeFrequencyStatsSuccessUnknown extends ReposGetCodeFrequencyStatsSuccess {const ReposGetCodeFrequencyStatsSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
