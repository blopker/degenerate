// GENERATED CODE - DO NOT MODIFY BY HAND

/// Options to configure Radar. See [Radar Session](https://docs.stripe.com/radar/radar-session) for more information.
final class PostPaymentMethodsRequestRadarOptions {const PostPaymentMethodsRequestRadarOptions({this.session});

factory PostPaymentMethodsRequestRadarOptions.fromJson(Map<String, dynamic> json) { return PostPaymentMethodsRequestRadarOptions(
  session: json['session'] as String?,
); }

final String? session;

Map<String, dynamic> toJson() { return {
  'session': ?session,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'session'}.contains(key)); } 
PostPaymentMethodsRequestRadarOptions copyWith({String Function()? session}) { return PostPaymentMethodsRequestRadarOptions(
  session: session != null ? session() : this.session,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodsRequestRadarOptions &&
          session == other.session; } 
@override int get hashCode { return session.hashCode; } 
@override String toString() { return 'PostPaymentMethodsRequestRadarOptions(session: $session)'; } 
 }
