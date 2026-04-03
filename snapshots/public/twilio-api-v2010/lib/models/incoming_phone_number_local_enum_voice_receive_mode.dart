// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class IncomingPhoneNumberLocalEnumVoiceReceiveMode {const IncomingPhoneNumberLocalEnumVoiceReceiveMode._(this.value);

factory IncomingPhoneNumberLocalEnumVoiceReceiveMode.fromJson(String json) { return switch (json) {
  'voice' => voice,
  'fax' => fax,
  _ => IncomingPhoneNumberLocalEnumVoiceReceiveMode._(json),
}; }

static const IncomingPhoneNumberLocalEnumVoiceReceiveMode voice = IncomingPhoneNumberLocalEnumVoiceReceiveMode._('voice');

static const IncomingPhoneNumberLocalEnumVoiceReceiveMode fax = IncomingPhoneNumberLocalEnumVoiceReceiveMode._('fax');

static const List<IncomingPhoneNumberLocalEnumVoiceReceiveMode> values = [voice, fax];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IncomingPhoneNumberLocalEnumVoiceReceiveMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IncomingPhoneNumberLocalEnumVoiceReceiveMode($value)'; } 
 }
