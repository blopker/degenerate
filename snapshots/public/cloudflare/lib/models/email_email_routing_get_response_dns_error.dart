// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_dns_record.dart';@immutable final class EmailEmailRoutingGetResponseDnsError {const EmailEmailRoutingGetResponseDnsError({this.code, this.missing, });

factory EmailEmailRoutingGetResponseDnsError.fromJson(Map<String, dynamic> json) { return EmailEmailRoutingGetResponseDnsError(
  code: json['code'] as String?,
  missing: json['missing'] != null ? EmailDnsRecord.fromJson(json['missing'] as Map<String, dynamic>) : null,
); }

final String? code;

final EmailDnsRecord? missing;

Map<String, dynamic> toJson() { return {
  'code': ?code,
  if (missing != null) 'missing': missing?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'code', 'missing'}.contains(key)); } 
EmailEmailRoutingGetResponseDnsError copyWith({String Function()? code, EmailDnsRecord Function()? missing, }) { return EmailEmailRoutingGetResponseDnsError(
  code: code != null ? code() : this.code,
  missing: missing != null ? missing() : this.missing,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailEmailRoutingGetResponseDnsError &&
          code == other.code &&
          missing == other.missing; } 
@override int get hashCode { return Object.hash(code, missing); } 
@override String toString() { return 'EmailEmailRoutingGetResponseDnsError(code: $code, missing: $missing)'; } 
 }
