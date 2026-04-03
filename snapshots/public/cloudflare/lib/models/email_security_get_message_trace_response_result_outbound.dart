// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_trace_line.dart';@immutable final class EmailSecurityGetMessageTraceResponseResultOutbound {const EmailSecurityGetMessageTraceResponseResultOutbound({this.lines, this.pending, });

factory EmailSecurityGetMessageTraceResponseResultOutbound.fromJson(Map<String, dynamic> json) { return EmailSecurityGetMessageTraceResponseResultOutbound(
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
EmailSecurityGetMessageTraceResponseResultOutbound copyWith({List<EmailSecurityTraceLine>? Function()? lines, bool? Function()? pending, }) { return EmailSecurityGetMessageTraceResponseResultOutbound(
  lines: lines != null ? lines() : this.lines,
  pending: pending != null ? pending() : this.pending,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityGetMessageTraceResponseResultOutbound &&
          listEquals(lines, other.lines) &&
          pending == other.pending; } 
@override int get hashCode { return Object.hash(Object.hashAll(lines ?? const []), pending); } 
@override String toString() { return 'EmailSecurityGetMessageTraceResponseResultOutbound(lines: $lines, pending: $pending)'; } 
 }
