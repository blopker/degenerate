// GENERATED CODE - DO NOT MODIFY BY HAND

/// Indicates that the shell call exceeded its configured time limit.
final class FunctionShellCallOutputTimeoutOutcomeParam {const FunctionShellCallOutputTimeoutOutcomeParam({this.type = 'timeout'});

factory FunctionShellCallOutputTimeoutOutcomeParam.fromJson(Map<String, dynamic> json) { return FunctionShellCallOutputTimeoutOutcomeParam(
  type: json['type'] as String,
); }

/// The outcome type. Always `timeout`.
final String type;

Map<String, dynamic> toJson() { return {
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
FunctionShellCallOutputTimeoutOutcomeParam copyWith({String? type}) { return FunctionShellCallOutputTimeoutOutcomeParam(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FunctionShellCallOutputTimeoutOutcomeParam &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'FunctionShellCallOutputTimeoutOutcomeParam(type: $type)'; } 
 }
