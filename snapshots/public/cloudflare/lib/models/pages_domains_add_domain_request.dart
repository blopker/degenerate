// GENERATED CODE - DO NOT MODIFY BY HAND

import 'pages_domain_name.dart';final class PagesDomainsAddDomainRequest {const PagesDomainsAddDomainRequest({required this.name});

factory PagesDomainsAddDomainRequest.fromJson(Map<String, dynamic> json) { return PagesDomainsAddDomainRequest(
  name: PagesDomainName.fromJson(json['name'] as String),
); }

/// The domain name.
final PagesDomainName name;

Map<String, dynamic> toJson() { return {
  'name': name.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name'); } 
PagesDomainsAddDomainRequest copyWith({PagesDomainName? name}) { return PagesDomainsAddDomainRequest(
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesDomainsAddDomainRequest &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'PagesDomainsAddDomainRequest(name: $name)'; } 
 }
