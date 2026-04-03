// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'intel_domain_name.dart';@immutable final class IntelWhois {const IntelWhois({this.createdDate, this.domain, this.nameservers, this.registrant, this.registrantCountry, this.registrantEmail, this.registrantOrg, this.registrar, this.updatedDate, });

factory IntelWhois.fromJson(Map<String, dynamic> json) { return IntelWhois(
  createdDate: json['created_date'] as String?,
  domain: json['domain'] != null ? IntelDomainName.fromJson(json['domain'] as String) : null,
  nameservers: (json['nameservers'] as List<dynamic>?)?.map((e) => e as String).toList(),
  registrant: json['registrant'] as String?,
  registrantCountry: json['registrant_country'] as String?,
  registrantEmail: json['registrant_email'] as String?,
  registrantOrg: json['registrant_org'] as String?,
  registrar: json['registrar'] as String?,
  updatedDate: json['updated_date'] as String?,
); }

final String? createdDate;

final IntelDomainName? domain;

final List<String>? nameservers;

final String? registrant;

final String? registrantCountry;

final String? registrantEmail;

final String? registrantOrg;

final String? registrar;

final String? updatedDate;

Map<String, dynamic> toJson() { return {
  'created_date': ?createdDate,
  if (domain != null) 'domain': domain?.toJson(),
  'nameservers': ?nameservers,
  'registrant': ?registrant,
  'registrant_country': ?registrantCountry,
  'registrant_email': ?registrantEmail,
  'registrant_org': ?registrantOrg,
  'registrar': ?registrar,
  'updated_date': ?updatedDate,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created_date', 'domain', 'nameservers', 'registrant', 'registrant_country', 'registrant_email', 'registrant_org', 'registrar', 'updated_date'}.contains(key)); } 
IntelWhois copyWith({String Function()? createdDate, IntelDomainName Function()? domain, List<String> Function()? nameservers, String Function()? registrant, String Function()? registrantCountry, String Function()? registrantEmail, String Function()? registrantOrg, String Function()? registrar, String Function()? updatedDate, }) { return IntelWhois(
  createdDate: createdDate != null ? createdDate() : this.createdDate,
  domain: domain != null ? domain() : this.domain,
  nameservers: nameservers != null ? nameservers() : this.nameservers,
  registrant: registrant != null ? registrant() : this.registrant,
  registrantCountry: registrantCountry != null ? registrantCountry() : this.registrantCountry,
  registrantEmail: registrantEmail != null ? registrantEmail() : this.registrantEmail,
  registrantOrg: registrantOrg != null ? registrantOrg() : this.registrantOrg,
  registrar: registrar != null ? registrar() : this.registrar,
  updatedDate: updatedDate != null ? updatedDate() : this.updatedDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IntelWhois &&
          createdDate == other.createdDate &&
          domain == other.domain &&
          listEquals(nameservers, other.nameservers) &&
          registrant == other.registrant &&
          registrantCountry == other.registrantCountry &&
          registrantEmail == other.registrantEmail &&
          registrantOrg == other.registrantOrg &&
          registrar == other.registrar &&
          updatedDate == other.updatedDate; } 
@override int get hashCode { return Object.hash(createdDate, domain, Object.hashAll(nameservers ?? const []), registrant, registrantCountry, registrantEmail, registrantOrg, registrar, updatedDate); } 
@override String toString() { return 'IntelWhois(createdDate: $createdDate, domain: $domain, nameservers: $nameservers, registrant: $registrant, registrantCountry: $registrantCountry, registrantEmail: $registrantEmail, registrantOrg: $registrantOrg, registrar: $registrar, updatedDate: $updatedDate)'; } 
 }
