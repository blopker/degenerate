// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_trace_line.dart';@immutable final class EmailSecurityGetMessageTraceResponseResultOutbound {const EmailSecurityGetMessageTraceResponseResultOutbound({this.lines = const Omittable.absent(), this.pending = const Omittable.absent(), });

factory EmailSecurityGetMessageTraceResponseResultOutbound.fromJson(Map<String, dynamic> json) { return EmailSecurityGetMessageTraceResponseResultOutbound(
  lines: json.containsKey('lines') ? Omittable((json['lines'] as List<dynamic>?)?.map((e) => EmailSecurityTraceLine.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  pending: json.containsKey('pending') ? Omittable(json['pending'] as bool?) : const Omittable.absent(),
); }

final Omittable<List<EmailSecurityTraceLine>?> lines;

final Omittable<bool?> pending;

Map<String, dynamic> toJson() { return {
  if (lines.isPresent) 'lines': lines.value?.map((e) => e.toJson()).toList(),
  if (pending.isPresent) 'pending': pending.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'lines', 'pending'}.contains(key)); } 
EmailSecurityGetMessageTraceResponseResultOutbound copyWith({Omittable<List<EmailSecurityTraceLine>?>? lines, Omittable<bool?>? pending, }) { return EmailSecurityGetMessageTraceResponseResultOutbound(
  lines: lines ?? this.lines,
  pending: pending ?? this.pending,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityGetMessageTraceResponseResultOutbound &&
          lines.isPresent == other.lines.isPresent &&
          listEquals(lines.value, other.lines.value) &&
          pending == other.pending; } 
@override int get hashCode { return Object.hash(Object.hashAll(lines.value ?? const []), pending); } 
@override String toString() { return 'EmailSecurityGetMessageTraceResponseResultOutbound(lines: $lines, pending: $pending)'; } 
 }
