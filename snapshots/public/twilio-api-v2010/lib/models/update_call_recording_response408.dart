// GENERATED CODE - DO NOT MODIFY BY HAND

final class UpdateCallRecordingResponse408 {const UpdateCallRecordingResponse408({this.code, this.message, this.moreInfo, this.status, });

factory UpdateCallRecordingResponse408.fromJson(Map<String, dynamic> json) { return UpdateCallRecordingResponse408(
  code: json['code'] != null ? (json['code'] as num).toInt() : null,
  message: json['message'] as String?,
  moreInfo: json['more_info'] as String?,
  status: json['status'] != null ? (json['status'] as num).toInt() : null,
); }

/// Twilio-specific error code
final int? code;

/// Error message
final String? message;

/// Link to Error Code References
final String? moreInfo;

/// HTTP response status code
final int? status;

Map<String, dynamic> toJson() { return {
  'code': ?code,
  'message': ?message,
  'more_info': ?moreInfo,
  'status': ?status,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
UpdateCallRecordingResponse408 copyWith({int Function()? code, String Function()? message, String Function()? moreInfo, int Function()? status, }) { return UpdateCallRecordingResponse408(
  code: code != null ? code() : this.code,
  message: message != null ? message() : this.message,
  moreInfo: moreInfo != null ? moreInfo() : this.moreInfo,
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateCallRecordingResponse408 &&
          code == other.code &&
          message == other.message &&
          moreInfo == other.moreInfo &&
          status == other.status; } 
@override int get hashCode { return Object.hash(code, message, moreInfo, status); } 
@override String toString() { return 'UpdateCallRecordingResponse408(code: $code, message: $message, moreInfo: $moreInfo, status: $status)'; } 
 }
