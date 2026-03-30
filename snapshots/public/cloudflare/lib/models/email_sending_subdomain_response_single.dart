// GENERATED CODE - DO NOT MODIFY BY HAND

import 'email_sending_subdomain_properties.dart';final class EmailSendingSubdomainResponseSingle {const EmailSendingSubdomainResponseSingle({this.result});

factory EmailSendingSubdomainResponseSingle.fromJson(Map<String, dynamic> json) { return EmailSendingSubdomainResponseSingle(
  result: json['result'] != null ? EmailSendingSubdomainProperties.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final EmailSendingSubdomainProperties? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
EmailSendingSubdomainResponseSingle copyWith({EmailSendingSubdomainProperties Function()? result}) { return EmailSendingSubdomainResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSendingSubdomainResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'EmailSendingSubdomainResponseSingle(result: $result)'; } 
 }
