// GENERATED CODE - DO NOT MODIFY BY HAND

final class IncomingPhoneNumberMobileEnumVoiceReceiveMode {const IncomingPhoneNumberMobileEnumVoiceReceiveMode._(this.value);

factory IncomingPhoneNumberMobileEnumVoiceReceiveMode.fromJson(String json) { return switch (json) {
  'voice' => voice,
  'fax' => fax,
  _ => IncomingPhoneNumberMobileEnumVoiceReceiveMode._(json),
}; }

static const IncomingPhoneNumberMobileEnumVoiceReceiveMode voice = IncomingPhoneNumberMobileEnumVoiceReceiveMode._('voice');

static const IncomingPhoneNumberMobileEnumVoiceReceiveMode fax = IncomingPhoneNumberMobileEnumVoiceReceiveMode._('fax');

static const List<IncomingPhoneNumberMobileEnumVoiceReceiveMode> values = [voice, fax];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IncomingPhoneNumberMobileEnumVoiceReceiveMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IncomingPhoneNumberMobileEnumVoiceReceiveMode($value)'; } 
 }
