// GENERATED CODE - DO NOT MODIFY BY HAND

final class LoadBalancingComponentsSchemasSingleResponse {const LoadBalancingComponentsSchemasSingleResponse({this.result});

factory LoadBalancingComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return LoadBalancingComponentsSchemasSingleResponse(
  result: (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
); }

/// A list of countries and subdivisions mapped to a region.
final Map<String,dynamic>? result;

Map<String, dynamic> toJson() { return {
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
LoadBalancingComponentsSchemasSingleResponse copyWith({Map<String, dynamic> Function()? result}) { return LoadBalancingComponentsSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingComponentsSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'LoadBalancingComponentsSchemasSingleResponse(result: $result)'; } 
 }
