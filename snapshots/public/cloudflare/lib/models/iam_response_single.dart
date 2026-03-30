// GENERATED CODE - DO NOT MODIFY BY HAND

final class IamResponseSingle {const IamResponseSingle({this.result});

factory IamResponseSingle.fromJson(Map<String, dynamic> json) { return IamResponseSingle(
  result: (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
); }

final Map<String,dynamic>? result;

Map<String, dynamic> toJson() { return {
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IamResponseSingle copyWith({Map<String, dynamic> Function()? result}) { return IamResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'IamResponseSingle(result: $result)'; } 
 }
