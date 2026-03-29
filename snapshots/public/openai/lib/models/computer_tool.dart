// GENERATED CODE - DO NOT MODIFY BY HAND

/// A tool that controls a virtual computer. Learn more about the [computer tool](https://platform.openai.com/docs/guides/tools-computer-use).
final class ComputerTool {const ComputerTool({this.type = 'computer'});

factory ComputerTool.fromJson(Map<String, dynamic> json) { return ComputerTool(
  type: json['type'] as String,
); }

/// The type of the computer tool. Always `computer`.
final String type;

Map<String, dynamic> toJson() { return {
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
ComputerTool copyWith({String? type}) { return ComputerTool(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ComputerTool &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'ComputerTool(type: $type)'; } 
 }
