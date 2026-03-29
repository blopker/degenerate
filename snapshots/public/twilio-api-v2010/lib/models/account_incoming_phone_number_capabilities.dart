// GENERATED CODE - DO NOT MODIFY BY HAND

/// The set of Boolean properties that indicate whether a phone number can receive calls or messages.  Capabilities are  `Voice`, `SMS`, and `MMS` and each capability can be: `true` or `false`.
final class AccountIncomingPhoneNumberCapabilities {const AccountIncomingPhoneNumberCapabilities({this.mms, this.sms, this.voice, this.fax, });

factory AccountIncomingPhoneNumberCapabilities.fromJson(Map<String, dynamic> json) { return AccountIncomingPhoneNumberCapabilities(
  mms: json['mms'] as bool?,
  sms: json['sms'] as bool?,
  voice: json['voice'] as bool?,
  fax: json['fax'] as bool?,
); }

final bool? mms;

final bool? sms;

final bool? voice;

final bool? fax;

Map<String, dynamic> toJson() { return {
  'mms': ?mms,
  'sms': ?sms,
  'voice': ?voice,
  'fax': ?fax,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AccountIncomingPhoneNumberCapabilities copyWith({bool Function()? mms, bool Function()? sms, bool Function()? voice, bool Function()? fax, }) { return AccountIncomingPhoneNumberCapabilities(
  mms: mms != null ? mms() : this.mms,
  sms: sms != null ? sms() : this.sms,
  voice: voice != null ? voice() : this.voice,
  fax: fax != null ? fax() : this.fax,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountIncomingPhoneNumberCapabilities &&
          mms == other.mms &&
          sms == other.sms &&
          voice == other.voice &&
          fax == other.fax; } 
@override int get hashCode { return Object.hash(mms, sms, voice, fax); } 
@override String toString() { return 'AccountIncomingPhoneNumberCapabilities(mms: $mms, sms: $sms, voice: $voice, fax: $fax)'; } 
 }
