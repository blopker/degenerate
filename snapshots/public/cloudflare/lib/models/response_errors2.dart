// GENERATED CODE - DO NOT MODIFY BY HAND

final class ResponseErrors2 {const ResponseErrors2({this.code, this.message, });

factory ResponseErrors2.fromJson(Map<String, dynamic> json) { return ResponseErrors2(
  code: json['code'] != null ? (json['code'] as num).toInt() : null,
  message: json['message'] as String?,
); }

final int? code;

final String? message;

Map<String, dynamic> toJson() { return {
  'code': ?code,
  'message': ?message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'code', 'message'}.contains(key)); } 
ResponseErrors2 copyWith({int Function()? code, String Function()? message, }) { return ResponseErrors2(
  code: code != null ? code() : this.code,
  message: message != null ? message() : this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseErrors2 &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'ResponseErrors2(code: $code, message: $message)'; } 
 }
