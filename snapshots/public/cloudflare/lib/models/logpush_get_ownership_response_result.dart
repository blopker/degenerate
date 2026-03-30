// GENERATED CODE - DO NOT MODIFY BY HAND

final class LogpushGetOwnershipResponseResult {const LogpushGetOwnershipResponseResult({this.filename, this.message, this.valid, });

factory LogpushGetOwnershipResponseResult.fromJson(Map<String, dynamic> json) { return LogpushGetOwnershipResponseResult(
  filename: json['filename'] as String?,
  message: json['message'] as String?,
  valid: json['valid'] as bool?,
); }

final String? filename;

final String? message;

final bool? valid;

Map<String, dynamic> toJson() { return {
  'filename': ?filename,
  'message': ?message,
  'valid': ?valid,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'filename', 'message', 'valid'}.contains(key)); } 
LogpushGetOwnershipResponseResult copyWith({String Function()? filename, String Function()? message, bool Function()? valid, }) { return LogpushGetOwnershipResponseResult(
  filename: filename != null ? filename() : this.filename,
  message: message != null ? message() : this.message,
  valid: valid != null ? valid() : this.valid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LogpushGetOwnershipResponseResult &&
          filename == other.filename &&
          message == other.message &&
          valid == other.valid; } 
@override int get hashCode { return Object.hash(filename, message, valid); } 
@override String toString() { return 'LogpushGetOwnershipResponseResult(filename: $filename, message: $message, valid: $valid)'; } 
 }
