// GENERATED CODE - DO NOT MODIFY BY HAND

import 'iam_request_ip.dart';final class IamCondition {const IamCondition({this.requestIp});

factory IamCondition.fromJson(Map<String, dynamic> json) { return IamCondition(
  requestIp: json['request_ip'] != null ? IamRequestIp.fromJson(json['request_ip'] as Map<String, dynamic>) : null,
); }

final IamRequestIp? requestIp;

Map<String, dynamic> toJson() { return {
  if (requestIp != null) 'request_ip': requestIp?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'request_ip'}.contains(key)); } 
IamCondition copyWith({IamRequestIp Function()? requestIp}) { return IamCondition(
  requestIp: requestIp != null ? requestIp() : this.requestIp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamCondition &&
          requestIp == other.requestIp; } 
@override int get hashCode { return requestIp.hashCode; } 
@override String toString() { return 'IamCondition(requestIp: $requestIp)'; } 
 }
