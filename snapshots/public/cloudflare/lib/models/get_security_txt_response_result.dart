// GENERATED CODE - DO NOT MODIFY BY HAND

import 'security_center_security_txt.dart';final class GetSecurityTxtResponseResult {const GetSecurityTxtResponseResult({this.securityCenterSecurityTxt});

factory GetSecurityTxtResponseResult.fromJson(Map<String, dynamic> json) { return GetSecurityTxtResponseResult(
  securityCenterSecurityTxt: SecurityCenterSecurityTxt.canParse(json) ? SecurityCenterSecurityTxt.fromJson(json) : null,
); }

final SecurityCenterSecurityTxt? securityCenterSecurityTxt;

/// At least one variant must be present.
bool get isValid { return securityCenterSecurityTxt != null; } 
Map<String, dynamic> toJson() { return {
  ...?securityCenterSecurityTxt?.toJson(),
}; } 
 }
