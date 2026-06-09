// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAuthResponse401 {const PostAuthResponse401({required this.errorMessage});

factory PostAuthResponse401.fromJson(Map<String, dynamic> json) { return PostAuthResponse401(
  errorMessage: json['errorMessage'] as String,
); }

final String errorMessage;

Map<String, dynamic> toJson() { return {
  'errorMessage': errorMessage,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errorMessage') && json['errorMessage'] is String; } 
PostAuthResponse401 copyWith({String? errorMessage}) { return PostAuthResponse401(
  errorMessage: errorMessage ?? this.errorMessage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAuthResponse401 &&
          errorMessage == other.errorMessage; } 
@override int get hashCode { return errorMessage.hashCode; } 
@override String toString() { return 'PostAuthResponse401(errorMessage: $errorMessage)'; } 
 }
