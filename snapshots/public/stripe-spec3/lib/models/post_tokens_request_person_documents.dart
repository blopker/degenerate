// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_tokens_request_person_documents_company_authorization.dart';import 'post_tokens_request_person_documents_passport.dart';import 'post_tokens_request_person_documents_visa.dart';final class PostTokensRequestPersonDocuments {const PostTokensRequestPersonDocuments({this.companyAuthorization, this.passport, this.visa, });

factory PostTokensRequestPersonDocuments.fromJson(Map<String, dynamic> json) { return PostTokensRequestPersonDocuments(
  companyAuthorization: json['company_authorization'] != null ? PostTokensRequestPersonDocumentsCompanyAuthorization.fromJson(json['company_authorization'] as Map<String, dynamic>) : null,
  passport: json['passport'] != null ? PostTokensRequestPersonDocumentsPassport.fromJson(json['passport'] as Map<String, dynamic>) : null,
  visa: json['visa'] != null ? PostTokensRequestPersonDocumentsVisa.fromJson(json['visa'] as Map<String, dynamic>) : null,
); }

final PostTokensRequestPersonDocumentsCompanyAuthorization? companyAuthorization;

final PostTokensRequestPersonDocumentsPassport? passport;

final PostTokensRequestPersonDocumentsVisa? visa;

Map<String, dynamic> toJson() { return {
  if (companyAuthorization != null) 'company_authorization': companyAuthorization?.toJson(),
  if (passport != null) 'passport': passport?.toJson(),
  if (visa != null) 'visa': visa?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostTokensRequestPersonDocuments copyWith({PostTokensRequestPersonDocumentsCompanyAuthorization Function()? companyAuthorization, PostTokensRequestPersonDocumentsPassport Function()? passport, PostTokensRequestPersonDocumentsVisa Function()? visa, }) { return PostTokensRequestPersonDocuments(
  companyAuthorization: companyAuthorization != null ? companyAuthorization() : this.companyAuthorization,
  passport: passport != null ? passport() : this.passport,
  visa: visa != null ? visa() : this.visa,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTokensRequestPersonDocuments &&
          companyAuthorization == other.companyAuthorization &&
          passport == other.passport &&
          visa == other.visa; } 
@override int get hashCode { return Object.hash(companyAuthorization, passport, visa); } 
@override String toString() { return 'PostTokensRequestPersonDocuments(companyAuthorization: $companyAuthorization, passport: $passport, visa: $visa)'; } 
 }
