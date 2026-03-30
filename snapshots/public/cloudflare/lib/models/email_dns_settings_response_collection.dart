// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_dns_record.dart';final class EmailDnsSettingsResponseCollection {const EmailDnsSettingsResponseCollection({this.result});

factory EmailDnsSettingsResponseCollection.fromJson(Map<String, dynamic> json) { return EmailDnsSettingsResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => EmailDnsRecord.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<EmailDnsRecord>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
EmailDnsSettingsResponseCollection copyWith({List<EmailDnsRecord> Function()? result}) { return EmailDnsSettingsResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailDnsSettingsResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'EmailDnsSettingsResponseCollection(result: $result)'; } 
 }
