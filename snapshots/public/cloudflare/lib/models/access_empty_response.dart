// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccessEmptyResponse {const AccessEmptyResponse({this.result, this.success, });

factory AccessEmptyResponse.fromJson(Map<String, dynamic> json) { return AccessEmptyResponse(
  result: json['result'] as bool?,
  success: json['success'] as bool?,
); }

final bool? result;

final bool? success;

Map<String, dynamic> toJson() { return {
  'result': ?result,
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result', 'success'}.contains(key)); } 
AccessEmptyResponse copyWith({bool Function()? result, bool Function()? success, }) { return AccessEmptyResponse(
  result: result != null ? result() : this.result,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessEmptyResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'AccessEmptyResponse(result: $result, success: $success)'; } 
 }
