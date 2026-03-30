// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostSetupIntentsIntentConfirmRequestPaymentMethodDataRadarOptions {const PostSetupIntentsIntentConfirmRequestPaymentMethodDataRadarOptions({this.session});

factory PostSetupIntentsIntentConfirmRequestPaymentMethodDataRadarOptions.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentConfirmRequestPaymentMethodDataRadarOptions(
  session: json['session'] as String?,
); }

final String? session;

Map<String, dynamic> toJson() { return {
  'session': ?session,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'session'}.contains(key)); } 
PostSetupIntentsIntentConfirmRequestPaymentMethodDataRadarOptions copyWith({String Function()? session}) { return PostSetupIntentsIntentConfirmRequestPaymentMethodDataRadarOptions(
  session: session != null ? session() : this.session,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentConfirmRequestPaymentMethodDataRadarOptions &&
          session == other.session; } 
@override int get hashCode { return session.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodDataRadarOptions(session: $session)'; } 
 }
