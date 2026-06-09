// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAuthResponseDefault {const PostAuthResponseDefault({required this.defaultErrorMessage});

factory PostAuthResponseDefault.fromJson(Map<String, dynamic> json) { return PostAuthResponseDefault(
  defaultErrorMessage: json['defaultErrorMessage'] as String,
); }

final String defaultErrorMessage;

Map<String, dynamic> toJson() { return {
  'defaultErrorMessage': defaultErrorMessage,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('defaultErrorMessage') && json['defaultErrorMessage'] is String; } 
PostAuthResponseDefault copyWith({String? defaultErrorMessage}) { return PostAuthResponseDefault(
  defaultErrorMessage: defaultErrorMessage ?? this.defaultErrorMessage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAuthResponseDefault &&
          defaultErrorMessage == other.defaultErrorMessage; } 
@override int get hashCode { return defaultErrorMessage.hashCode; } 
@override String toString() { return 'PostAuthResponseDefault(defaultErrorMessage: $defaultErrorMessage)'; } 
 }
