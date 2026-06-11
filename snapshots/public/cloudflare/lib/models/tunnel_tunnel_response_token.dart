// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tunnel_messages2.dart';/// The Tunnel Token is used as a mechanism to authenticate the operation of a tunnel.
extension type const TunnelTunnelToken(String value) {
factory TunnelTunnelToken.fromJson(String json) => TunnelTunnelToken(json);

String toJson() => value;

}
@immutable final class TunnelTunnelResponseToken {const TunnelTunnelResponseToken({required this.errors, required this.messages, required this.result, required this.success, });

factory TunnelTunnelResponseToken.fromJson(Map<String, dynamic> json) { return TunnelTunnelResponseToken(
  errors: (json['errors'] as List<dynamic>).map((e) => TunnelMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => TunnelMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: TunnelTunnelToken.fromJson(json['result'] as String),
  success: json['success'] as bool,
); }

final List<TunnelMessages2> errors;

final List<TunnelMessages2> messages;

final TunnelTunnelToken result;

/// Whether the API call was successful
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
TunnelTunnelResponseToken copyWith({List<TunnelMessages2>? errors, List<TunnelMessages2>? messages, TunnelTunnelToken? result, bool? success, }) { return TunnelTunnelResponseToken(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TunnelTunnelResponseToken &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'TunnelTunnelResponseToken(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
