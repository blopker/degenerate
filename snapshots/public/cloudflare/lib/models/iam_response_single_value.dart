// GENERATED CODE - DO NOT MODIFY BY HAND

import 'iam_value.dart';final class IamResponseSingleValue {const IamResponseSingleValue({this.result});

factory IamResponseSingleValue.fromJson(Map<String, dynamic> json) { return IamResponseSingleValue(
  result: json['result'] != null ? IamValue.fromJson(json['result'] as String) : null,
); }

final IamValue? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IamResponseSingleValue copyWith({IamValue Function()? result}) { return IamResponseSingleValue(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamResponseSingleValue &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'IamResponseSingleValue(result: $result)'; } 
 }
