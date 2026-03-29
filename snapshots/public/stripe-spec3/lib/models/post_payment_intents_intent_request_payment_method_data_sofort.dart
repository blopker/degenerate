// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentIntentsIntentRequestPaymentMethodDataSofortCountry {const PostPaymentIntentsIntentRequestPaymentMethodDataSofortCountry._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodDataSofortCountry.fromJson(String json) { return switch (json) {
  'AT' => at,
  'BE' => be,
  'DE' => de,
  'ES' => es,
  'IT' => it,
  'NL' => nl,
  _ => PostPaymentIntentsIntentRequestPaymentMethodDataSofortCountry._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodDataSofortCountry at = PostPaymentIntentsIntentRequestPaymentMethodDataSofortCountry._('AT');

static const PostPaymentIntentsIntentRequestPaymentMethodDataSofortCountry be = PostPaymentIntentsIntentRequestPaymentMethodDataSofortCountry._('BE');

static const PostPaymentIntentsIntentRequestPaymentMethodDataSofortCountry de = PostPaymentIntentsIntentRequestPaymentMethodDataSofortCountry._('DE');

static const PostPaymentIntentsIntentRequestPaymentMethodDataSofortCountry es = PostPaymentIntentsIntentRequestPaymentMethodDataSofortCountry._('ES');

static const PostPaymentIntentsIntentRequestPaymentMethodDataSofortCountry it = PostPaymentIntentsIntentRequestPaymentMethodDataSofortCountry._('IT');

static const PostPaymentIntentsIntentRequestPaymentMethodDataSofortCountry nl = PostPaymentIntentsIntentRequestPaymentMethodDataSofortCountry._('NL');

static const List<PostPaymentIntentsIntentRequestPaymentMethodDataSofortCountry> values = [at, be, de, es, it, nl];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodDataSofortCountry && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodDataSofortCountry($value)'; } 
 }
final class PostPaymentIntentsIntentRequestPaymentMethodDataSofort {const PostPaymentIntentsIntentRequestPaymentMethodDataSofort({required this.country});

factory PostPaymentIntentsIntentRequestPaymentMethodDataSofort.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentRequestPaymentMethodDataSofort(
  country: PostPaymentIntentsIntentRequestPaymentMethodDataSofortCountry.fromJson(json['country'] as String),
); }

final PostPaymentIntentsIntentRequestPaymentMethodDataSofortCountry country;

Map<String, dynamic> toJson() { return {
  'country': country.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('country'); } 
PostPaymentIntentsIntentRequestPaymentMethodDataSofort copyWith({PostPaymentIntentsIntentRequestPaymentMethodDataSofortCountry? country}) { return PostPaymentIntentsIntentRequestPaymentMethodDataSofort(
  country: country ?? this.country,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodDataSofort &&
          country == other.country; } 
@override int get hashCode { return country.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodDataSofort(country: $country)'; } 
 }
