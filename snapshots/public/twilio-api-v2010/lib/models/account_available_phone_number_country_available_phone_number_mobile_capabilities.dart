// GENERATED CODE - DO NOT MODIFY BY HAND

/// The set of Boolean properties that indicate whether a phone number can receive calls or messages.  Capabilities are: `Voice`, `SMS`, and `MMS` and each capability can be: `true` or `false`.
final class AccountAvailablePhoneNumberCountryAvailablePhoneNumberMobileCapabilities {const AccountAvailablePhoneNumberCountryAvailablePhoneNumberMobileCapabilities({this.mms, this.sms, this.voice, this.fax, });

factory AccountAvailablePhoneNumberCountryAvailablePhoneNumberMobileCapabilities.fromJson(Map<String, dynamic> json) { return AccountAvailablePhoneNumberCountryAvailablePhoneNumberMobileCapabilities(
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
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mms', 'sms', 'voice', 'fax'}.contains(key)); } 
AccountAvailablePhoneNumberCountryAvailablePhoneNumberMobileCapabilities copyWith({bool Function()? mms, bool Function()? sms, bool Function()? voice, bool Function()? fax, }) { return AccountAvailablePhoneNumberCountryAvailablePhoneNumberMobileCapabilities(
  mms: mms != null ? mms() : this.mms,
  sms: sms != null ? sms() : this.sms,
  voice: voice != null ? voice() : this.voice,
  fax: fax != null ? fax() : this.fax,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountAvailablePhoneNumberCountryAvailablePhoneNumberMobileCapabilities &&
          mms == other.mms &&
          sms == other.sms &&
          voice == other.voice &&
          fax == other.fax; } 
@override int get hashCode { return Object.hash(mms, sms, voice, fax); } 
@override String toString() { return 'AccountAvailablePhoneNumberCountryAvailablePhoneNumberMobileCapabilities(mms: $mms, sms: $sms, voice: $voice, fax: $fax)'; } 
 }
