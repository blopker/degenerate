// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookLabelEditedChangesColor {const WebhookLabelEditedChangesColor({required this.from});

factory WebhookLabelEditedChangesColor.fromJson(Map<String, dynamic> json) { return WebhookLabelEditedChangesColor(
  from: json['from'] as String,
); }

/// The previous version of the color if the action was `edited`.
final String from;

Map<String, dynamic> toJson() { return {
  'from': from,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from') && json['from'] is String; } 
WebhookLabelEditedChangesColor copyWith({String? from}) { return WebhookLabelEditedChangesColor(
  from: from ?? this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookLabelEditedChangesColor &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookLabelEditedChangesColor(from: $from)'; } 
 }
