// GENERATED CODE - DO NOT MODIFY BY HAND

final class CodespacesCheckPermissionsForDevcontainerResponse503 {const CodespacesCheckPermissionsForDevcontainerResponse503({this.code, this.message, this.documentationUrl, });

factory CodespacesCheckPermissionsForDevcontainerResponse503.fromJson(Map<String, dynamic> json) { return CodespacesCheckPermissionsForDevcontainerResponse503(
  code: json['code'] as String?,
  message: json['message'] as String?,
  documentationUrl: json['documentation_url'] as String?,
); }

final String? code;

final String? message;

final String? documentationUrl;

Map<String, dynamic> toJson() { return {
  'code': ?code,
  'message': ?message,
  'documentation_url': ?documentationUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
CodespacesCheckPermissionsForDevcontainerResponse503 copyWith({String Function()? code, String Function()? message, String Function()? documentationUrl, }) { return CodespacesCheckPermissionsForDevcontainerResponse503(
  code: code != null ? code() : this.code,
  message: message != null ? message() : this.message,
  documentationUrl: documentationUrl != null ? documentationUrl() : this.documentationUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodespacesCheckPermissionsForDevcontainerResponse503 &&
          code == other.code &&
          message == other.message &&
          documentationUrl == other.documentationUrl; } 
@override int get hashCode { return Object.hash(code, message, documentationUrl); } 
@override String toString() { return 'CodespacesCheckPermissionsForDevcontainerResponse503(code: $code, message: $message, documentationUrl: $documentationUrl)'; } 
 }
