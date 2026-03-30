// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pages_deployment.dart';final class PagesDeploymentGetDeploymentsResponse {const PagesDeploymentGetDeploymentsResponse({required this.result});

factory PagesDeploymentGetDeploymentsResponse.fromJson(Map<String, dynamic> json) { return PagesDeploymentGetDeploymentsResponse(
  result: (json['result'] as List<dynamic>).map((e) => PagesDeployment.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<PagesDeployment> result;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
PagesDeploymentGetDeploymentsResponse copyWith({List<PagesDeployment>? result}) { return PagesDeploymentGetDeploymentsResponse(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesDeploymentGetDeploymentsResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result).hashCode; } 
@override String toString() { return 'PagesDeploymentGetDeploymentsResponse(result: $result)'; } 
 }
