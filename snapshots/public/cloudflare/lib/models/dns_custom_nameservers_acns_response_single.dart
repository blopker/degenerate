// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_custom_nameservers_custom_ns.dart';import 'dns_custom_nameservers_messages2.dart';@immutable final class DnsCustomNameserversAcnsResponseSingle {const DnsCustomNameserversAcnsResponseSingle({required this.errors, required this.messages, required this.success, this.result, });

factory DnsCustomNameserversAcnsResponseSingle.fromJson(Map<String, dynamic> json) { return DnsCustomNameserversAcnsResponseSingle(
  errors: (json['errors'] as List<dynamic>).map((e) => DnsCustomNameserversMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DnsCustomNameserversMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? DnsCustomNameserversCustomNs.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<DnsCustomNameserversMessages2> errors;

final List<DnsCustomNameserversMessages2> messages;

/// Whether the API call was successful.
final bool success;

final DnsCustomNameserversCustomNs? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
DnsCustomNameserversAcnsResponseSingle copyWith({List<DnsCustomNameserversMessages2>? errors, List<DnsCustomNameserversMessages2>? messages, bool? success, DnsCustomNameserversCustomNs Function()? result, }) { return DnsCustomNameserversAcnsResponseSingle(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsCustomNameserversAcnsResponseSingle &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'DnsCustomNameserversAcnsResponseSingle(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
