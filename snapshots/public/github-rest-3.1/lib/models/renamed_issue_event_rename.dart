// GENERATED CODE - DO NOT MODIFY BY HAND

final class RenamedIssueEventRename {const RenamedIssueEventRename({required this.from, required this.to, });

factory RenamedIssueEventRename.fromJson(Map<String, dynamic> json) { return RenamedIssueEventRename(
  from: json['from'] as String,
  to: json['to'] as String,
); }

final String from;

final String to;

Map<String, dynamic> toJson() { return {
  'from': from,
  'to': to,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from') && json['from'] is String &&
      json.containsKey('to') && json['to'] is String; } 
RenamedIssueEventRename copyWith({String? from, String? to, }) { return RenamedIssueEventRename(
  from: from ?? this.from,
  to: to ?? this.to,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RenamedIssueEventRename &&
          from == other.from &&
          to == other.to; } 
@override int get hashCode { return Object.hash(from, to); } 
@override String toString() { return 'RenamedIssueEventRename(from: $from, to: $to)'; } 
 }
