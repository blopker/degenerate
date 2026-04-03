// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_app_response.dart';@immutable final class AccessApplicationsUpdateAnAccessApplicationResponse {const AccessApplicationsUpdateAnAccessApplicationResponse({this.result});

factory AccessApplicationsUpdateAnAccessApplicationResponse.fromJson(Map<String, dynamic> json) { return AccessApplicationsUpdateAnAccessApplicationResponse(
  result: json['result'] != null ? AccessAppResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessAppResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessApplicationsUpdateAnAccessApplicationResponse copyWith({AccessAppResponse Function()? result}) { return AccessApplicationsUpdateAnAccessApplicationResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessApplicationsUpdateAnAccessApplicationResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessApplicationsUpdateAnAccessApplicationResponse(result: $result)'; } 
 }
