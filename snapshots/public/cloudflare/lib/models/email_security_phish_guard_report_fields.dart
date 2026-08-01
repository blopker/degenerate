// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailSecurityPhishGuardReportFields {const EmailSecurityPhishGuardReportFields({required this.to, required this.ts, this.from = const Omittable.absent(), this.postfixId = const Omittable.absent(), });

factory EmailSecurityPhishGuardReportFields.fromJson(Map<String, dynamic> json) { return EmailSecurityPhishGuardReportFields(
  from: json.containsKey('from') ? Omittable(json['from'] as String?) : const Omittable.absent(),
  postfixId: json.containsKey('postfix_id') ? Omittable(json['postfix_id'] as String?) : const Omittable.absent(),
  to: (json['to'] as List<dynamic>).map((e) => e as String).toList(),
  ts: DateTime.parse(json['ts'] as String),
); }

final Omittable<String?> from;

final Omittable<String?> postfixId;

final List<String> to;

final DateTime ts;

Map<String, dynamic> toJson() { return {
  if (from.isPresent) 'from': from.value,
  if (postfixId.isPresent) 'postfix_id': postfixId.value,
  'to': to,
  'ts': ts.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('to') &&
      json.containsKey('ts') && json['ts'] is String; } 
EmailSecurityPhishGuardReportFields copyWith({Omittable<String?>? from, Omittable<String?>? postfixId, List<String>? to, DateTime? ts, }) { return EmailSecurityPhishGuardReportFields(
  from: from ?? this.from,
  postfixId: postfixId ?? this.postfixId,
  to: to ?? this.to,
  ts: ts ?? this.ts,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityPhishGuardReportFields &&
          from == other.from &&
          postfixId == other.postfixId &&
          listEquals(to, other.to) &&
          ts == other.ts; } 
@override int get hashCode { return Object.hash(from, postfixId, Object.hashAll(to), ts); } 
@override String toString() { return 'EmailSecurityPhishGuardReportFields(from: $from, postfixId: $postfixId, to: $to, ts: $ts)'; } 
 }
