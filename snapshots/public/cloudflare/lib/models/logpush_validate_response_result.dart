// GENERATED CODE - DO NOT MODIFY BY HAND

final class LogpushValidateResponseResult {const LogpushValidateResponseResult({this.message, this.valid, });

factory LogpushValidateResponseResult.fromJson(Map<String, dynamic> json) { return LogpushValidateResponseResult(
  message: json['message'] as String?,
  valid: json['valid'] as bool?,
); }

final String? message;

final bool? valid;

Map<String, dynamic> toJson() { return {
  'message': ?message,
  'valid': ?valid,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'message', 'valid'}.contains(key)); } 
LogpushValidateResponseResult copyWith({String Function()? message, bool Function()? valid, }) { return LogpushValidateResponseResult(
  message: message != null ? message() : this.message,
  valid: valid != null ? valid() : this.valid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LogpushValidateResponseResult &&
          message == other.message &&
          valid == other.valid; } 
@override int get hashCode { return Object.hash(message, valid); } 
@override String toString() { return 'LogpushValidateResponseResult(message: $message, valid: $valid)'; } 
 }
