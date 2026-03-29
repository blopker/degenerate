// GENERATED CODE - DO NOT MODIFY BY HAND

/// A double click action.
final class DoubleClickAction {const DoubleClickAction({this.type = 'double_click', required this.x, required this.y, });

factory DoubleClickAction.fromJson(Map<String, dynamic> json) { return DoubleClickAction(
  type: json['type'] as String,
  x: (json['x'] as num).toInt(),
  y: (json['y'] as num).toInt(),
); }

/// Specifies the event type. For a double click action, this property is always set to `double_click`.
final String type;

/// The x-coordinate where the double click occurred.
final int x;

/// The y-coordinate where the double click occurred.
final int y;

Map<String, dynamic> toJson() { return {
  'type': type,
  'x': x,
  'y': y,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('x') && json['x'] is num &&
      json.containsKey('y') && json['y'] is num; } 
DoubleClickAction copyWith({String? type, int? x, int? y, }) { return DoubleClickAction(
  type: type ?? this.type,
  x: x ?? this.x,
  y: y ?? this.y,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DoubleClickAction &&
          type == other.type &&
          x == other.x &&
          y == other.y; } 
@override int get hashCode { return Object.hash(type, x, y); } 
@override String toString() { return 'DoubleClickAction(type: $type, x: $x, y: $y)'; } 
 }
