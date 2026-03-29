// GENERATED CODE - DO NOT MODIFY BY HAND

import 'iam_use_fedramp_language.dart';final class InitNewSsoConnectorRequest {const InitNewSsoConnectorRequest({this.beginVerification = true, required this.emailDomain, this.useFedrampLanguage, });

factory InitNewSsoConnectorRequest.fromJson(Map<String, dynamic> json) { return InitNewSsoConnectorRequest(
  beginVerification: json.containsKey('begin_verification') ? json['begin_verification'] as bool : true,
  emailDomain: json['email_domain'] as String,
  useFedrampLanguage: json['use_fedramp_language'] != null ? IamUseFedrampLanguage.fromJson(json['use_fedramp_language'] as bool) : null,
); }

/// Begin the verification process after creation
final bool beginVerification;

/// Email domain of the new SSO connector
final String emailDomain;

/// Controls the display of FedRAMP language to the user during SSO login
final IamUseFedrampLanguage? useFedrampLanguage;

Map<String, dynamic> toJson() { return {
  'begin_verification': beginVerification,
  'email_domain': emailDomain,
  if (useFedrampLanguage != null) 'use_fedramp_language': useFedrampLanguage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('email_domain') && json['email_domain'] is String; } 
InitNewSsoConnectorRequest copyWith({bool Function()? beginVerification, String? emailDomain, IamUseFedrampLanguage Function()? useFedrampLanguage, }) { return InitNewSsoConnectorRequest(
  beginVerification: beginVerification != null ? beginVerification() : this.beginVerification,
  emailDomain: emailDomain ?? this.emailDomain,
  useFedrampLanguage: useFedrampLanguage != null ? useFedrampLanguage() : this.useFedrampLanguage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InitNewSsoConnectorRequest &&
          beginVerification == other.beginVerification &&
          emailDomain == other.emailDomain &&
          useFedrampLanguage == other.useFedrampLanguage; } 
@override int get hashCode { return Object.hash(beginVerification, emailDomain, useFedrampLanguage); } 
@override String toString() { return 'InitNewSsoConnectorRequest(beginVerification: $beginVerification, emailDomain: $emailDomain, useFedrampLanguage: $useFedrampLanguage)'; } 
 }
