// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_app_response.dart';final class AccessApplicationsAddAnApplicationResponse {const AccessApplicationsAddAnApplicationResponse({this.result});

factory AccessApplicationsAddAnApplicationResponse.fromJson(Map<String, dynamic> json) { return AccessApplicationsAddAnApplicationResponse(
  result: json['result'] != null ? AccessAppResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessAppResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessApplicationsAddAnApplicationResponse copyWith({AccessAppResponse Function()? result}) { return AccessApplicationsAddAnApplicationResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessApplicationsAddAnApplicationResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessApplicationsAddAnApplicationResponse(result: $result)'; } 
 }
