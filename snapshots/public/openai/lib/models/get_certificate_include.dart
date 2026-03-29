// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetCertificateInclude {const GetCertificateInclude._(this.value);

factory GetCertificateInclude.fromJson(String json) { return switch (json) {
  'content' => content,
  _ => GetCertificateInclude._(json),
}; }

static const GetCertificateInclude content = GetCertificateInclude._('content');

static const List<GetCertificateInclude> values = [content];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetCertificateInclude && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetCertificateInclude($value)'; } 
 }
