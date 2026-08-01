// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account_available_phone_number_country.dart';@immutable final class ListAvailablePhoneNumberCountryResponse {const ListAvailablePhoneNumberCountryResponse({this.countries, this.uri = const Omittable.absent(), });

factory ListAvailablePhoneNumberCountryResponse.fromJson(Map<String, dynamic> json) { return ListAvailablePhoneNumberCountryResponse(
  countries: (json['countries'] as List<dynamic>?)?.map((e) => AccountAvailablePhoneNumberCountry.fromJson(e as Map<String, dynamic>)).toList(),
  uri: json.containsKey('uri') ? Omittable(json['uri'] != null ? Uri.parse(json['uri'] as String) : null) : const Omittable.absent(),
); }

final List<AccountAvailablePhoneNumberCountry>? countries;

final Omittable<Uri?> uri;

Map<String, dynamic> toJson() { return {
  if (countries != null) 'countries': countries?.map((e) => e.toJson()).toList(),
  if (uri.isPresent) 'uri': uri.value?.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'countries', 'uri'}.contains(key)); } 
ListAvailablePhoneNumberCountryResponse copyWith({List<AccountAvailablePhoneNumberCountry>? Function()? countries, Omittable<Uri?>? uri, }) { return ListAvailablePhoneNumberCountryResponse(
  countries: countries != null ? countries() : this.countries,
  uri: uri ?? this.uri,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListAvailablePhoneNumberCountryResponse &&
          listEquals(countries, other.countries) &&
          uri == other.uri; } 
@override int get hashCode { return Object.hash(Object.hashAll(countries ?? const []), uri); } 
@override String toString() { return 'ListAvailablePhoneNumberCountryResponse(countries: $countries, uri: $uri)'; } 
 }
