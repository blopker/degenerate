// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostSetupIntentsIntentRequestPaymentMethodDataRadarOptions {const PostSetupIntentsIntentRequestPaymentMethodDataRadarOptions({this.session});

factory PostSetupIntentsIntentRequestPaymentMethodDataRadarOptions.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentRequestPaymentMethodDataRadarOptions(
  session: json['session'] as String?,
); }

final String? session;

Map<String, dynamic> toJson() { return {
  'session': ?session,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostSetupIntentsIntentRequestPaymentMethodDataRadarOptions copyWith({String Function()? session}) { return PostSetupIntentsIntentRequestPaymentMethodDataRadarOptions(
  session: session != null ? session() : this.session,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentRequestPaymentMethodDataRadarOptions &&
          session == other.session; } 
@override int get hashCode { return session.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodDataRadarOptions(session: $session)'; } 
 }
