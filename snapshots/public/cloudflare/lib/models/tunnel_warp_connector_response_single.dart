// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tunnel_messages2.dart';import 'tunnel_warp_connector_tunnel.dart';@immutable final class TunnelWarpConnectorResponseSingle {const TunnelWarpConnectorResponseSingle({required this.errors, required this.messages, required this.result, required this.success, });

factory TunnelWarpConnectorResponseSingle.fromJson(Map<String, dynamic> json) { return TunnelWarpConnectorResponseSingle(
  errors: (json['errors'] as List<dynamic>).map((e) => TunnelMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => TunnelMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: TunnelWarpConnectorTunnel.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<TunnelMessages2> errors;

final List<TunnelMessages2> messages;

final TunnelWarpConnectorTunnel result;

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
TunnelWarpConnectorResponseSingle copyWith({List<TunnelMessages2>? errors, List<TunnelMessages2>? messages, TunnelWarpConnectorTunnel? result, bool? success, }) { return TunnelWarpConnectorResponseSingle(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TunnelWarpConnectorResponseSingle &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'TunnelWarpConnectorResponseSingle(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
