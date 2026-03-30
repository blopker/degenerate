// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_organization.dart';final class IamCollectionOrganizationResponse {const IamCollectionOrganizationResponse({this.result});

factory IamCollectionOrganizationResponse.fromJson(Map<String, dynamic> json) { return IamCollectionOrganizationResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => IamOrganization.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<IamOrganization>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IamCollectionOrganizationResponse copyWith({List<IamOrganization> Function()? result}) { return IamCollectionOrganizationResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamCollectionOrganizationResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'IamCollectionOrganizationResponse(result: $result)'; } 
 }
