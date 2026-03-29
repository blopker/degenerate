// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_accounts_account_people_request_documents_company_authorization.dart';import 'post_accounts_account_people_request_documents_passport.dart';import 'post_accounts_account_people_request_documents_visa.dart';/// Documents that may be submitted to satisfy various informational requests.
final class PostAccountsAccountPeopleRequestDocuments {const PostAccountsAccountPeopleRequestDocuments({this.companyAuthorization, this.passport, this.visa, });

factory PostAccountsAccountPeopleRequestDocuments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountPeopleRequestDocuments(
  companyAuthorization: json['company_authorization'] != null ? PostAccountsAccountPeopleRequestDocumentsCompanyAuthorization.fromJson(json['company_authorization'] as Map<String, dynamic>) : null,
  passport: json['passport'] != null ? PostAccountsAccountPeopleRequestDocumentsPassport.fromJson(json['passport'] as Map<String, dynamic>) : null,
  visa: json['visa'] != null ? PostAccountsAccountPeopleRequestDocumentsVisa.fromJson(json['visa'] as Map<String, dynamic>) : null,
); }

final PostAccountsAccountPeopleRequestDocumentsCompanyAuthorization? companyAuthorization;

final PostAccountsAccountPeopleRequestDocumentsPassport? passport;

final PostAccountsAccountPeopleRequestDocumentsVisa? visa;

Map<String, dynamic> toJson() { return {
  if (companyAuthorization != null) 'company_authorization': companyAuthorization?.toJson(),
  if (passport != null) 'passport': passport?.toJson(),
  if (visa != null) 'visa': visa?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountPeopleRequestDocuments copyWith({PostAccountsAccountPeopleRequestDocumentsCompanyAuthorization Function()? companyAuthorization, PostAccountsAccountPeopleRequestDocumentsPassport Function()? passport, PostAccountsAccountPeopleRequestDocumentsVisa Function()? visa, }) { return PostAccountsAccountPeopleRequestDocuments(
  companyAuthorization: companyAuthorization != null ? companyAuthorization() : this.companyAuthorization,
  passport: passport != null ? passport() : this.passport,
  visa: visa != null ? visa() : this.visa,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountPeopleRequestDocuments &&
          companyAuthorization == other.companyAuthorization &&
          passport == other.passport &&
          visa == other.visa; } 
@override int get hashCode { return Object.hash(companyAuthorization, passport, visa); } 
@override String toString() { return 'PostAccountsAccountPeopleRequestDocuments(companyAuthorization: $companyAuthorization, passport: $passport, visa: $visa)'; } 
 }
