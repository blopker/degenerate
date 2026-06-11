// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'put_zones_zone_id_activation_check_response_result.dart';import 'zone_activation_messages2.dart';@immutable final class PutZonesZoneIdActivationCheckResponse {const PutZonesZoneIdActivationCheckResponse({required this.errors, required this.messages, required this.success, this.result, });

factory PutZonesZoneIdActivationCheckResponse.fromJson(Map<String, dynamic> json) { return PutZonesZoneIdActivationCheckResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => ZoneActivationMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ZoneActivationMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? PutZonesZoneIdActivationCheckResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<ZoneActivationMessages2> errors;

final List<ZoneActivationMessages2> messages;

/// Whether the API call was successful.
final bool success;

final PutZonesZoneIdActivationCheckResponseResult? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
PutZonesZoneIdActivationCheckResponse copyWith({List<ZoneActivationMessages2>? errors, List<ZoneActivationMessages2>? messages, bool? success, PutZonesZoneIdActivationCheckResponseResult Function()? result, }) { return PutZonesZoneIdActivationCheckResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PutZonesZoneIdActivationCheckResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'PutZonesZoneIdActivationCheckResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
