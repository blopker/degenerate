// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_trace_line.dart';final class EmailSecurityGetMessageTraceResponseResultInbound {const EmailSecurityGetMessageTraceResponseResultInbound({this.lines, this.pending, });

factory EmailSecurityGetMessageTraceResponseResultInbound.fromJson(Map<String, dynamic> json) { return EmailSecurityGetMessageTraceResponseResultInbound(
  lines: (json['lines'] as List<dynamic>?)?.map((e) => EmailSecurityTraceLine.fromJson(e as Map<String, dynamic>)).toList(),
  pending: json['pending'] as bool?,
); }

final List<EmailSecurityTraceLine>? lines;

final bool? pending;

Map<String, dynamic> toJson() { return {
  if (lines != null) 'lines': lines?.map((e) => e.toJson()).toList(),
  'pending': ?pending,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'lines', 'pending'}.contains(key)); } 
EmailSecurityGetMessageTraceResponseResultInbound copyWith({List<EmailSecurityTraceLine>? Function()? lines, bool? Function()? pending, }) { return EmailSecurityGetMessageTraceResponseResultInbound(
  lines: lines != null ? lines() : this.lines,
  pending: pending != null ? pending() : this.pending,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityGetMessageTraceResponseResultInbound &&
          listEquals(lines, other.lines) &&
          pending == other.pending; } 
@override int get hashCode { return Object.hash(Object.hashAll(lines ?? const []), pending); } 
@override String toString() { return 'EmailSecurityGetMessageTraceResponseResultInbound(lines: $lines, pending: $pending)'; } 
 }
