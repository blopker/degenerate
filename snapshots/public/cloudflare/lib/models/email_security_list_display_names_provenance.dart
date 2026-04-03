// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailSecurityListDisplayNamesProvenance {const EmailSecurityListDisplayNamesProvenance._(this.value);

factory EmailSecurityListDisplayNamesProvenance.fromJson(String json) { return switch (json) {
  'A1S_INTERNAL' => a1SInternal,
  'SNOOPY-CASB_OFFICE_365' => snoopyCasbOffice365,
  'SNOOPY-OFFICE_365' => snoopyOffice365,
  'SNOOPY-GOOGLE_DIRECTORY' => snoopyGoogleDirectory,
  _ => EmailSecurityListDisplayNamesProvenance._(json),
}; }

static const EmailSecurityListDisplayNamesProvenance a1SInternal = EmailSecurityListDisplayNamesProvenance._('A1S_INTERNAL');

static const EmailSecurityListDisplayNamesProvenance snoopyCasbOffice365 = EmailSecurityListDisplayNamesProvenance._('SNOOPY-CASB_OFFICE_365');

static const EmailSecurityListDisplayNamesProvenance snoopyOffice365 = EmailSecurityListDisplayNamesProvenance._('SNOOPY-OFFICE_365');

static const EmailSecurityListDisplayNamesProvenance snoopyGoogleDirectory = EmailSecurityListDisplayNamesProvenance._('SNOOPY-GOOGLE_DIRECTORY');

static const List<EmailSecurityListDisplayNamesProvenance> values = [a1SInternal, snoopyCasbOffice365, snoopyOffice365, snoopyGoogleDirectory];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecurityListDisplayNamesProvenance && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailSecurityListDisplayNamesProvenance($value)'; } 
 }
