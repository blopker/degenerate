// GENERATED CODE - DO NOT MODIFY BY HAND

final class DeleteGroupDeleteResponse {const DeleteGroupDeleteResponse({this.message, this.success, });

factory DeleteGroupDeleteResponse.fromJson(Map<String, dynamic> json) { return DeleteGroupDeleteResponse(
  message: json['message'] as String?,
  success: json['success'] as bool?,
); }

final String? message;

final bool? success;

Map<String, dynamic> toJson() { return {
  'message': ?message,
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
DeleteGroupDeleteResponse copyWith({String Function()? message, bool Function()? success, }) { return DeleteGroupDeleteResponse(
  message: message != null ? message() : this.message,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteGroupDeleteResponse &&
          message == other.message &&
          success == other.success; } 
@override int get hashCode { return Object.hash(message, success); } 
@override String toString() { return 'DeleteGroupDeleteResponse(message: $message, success: $success)'; } 
 }
