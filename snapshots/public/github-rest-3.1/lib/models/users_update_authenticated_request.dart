// GENERATED CODE - DO NOT MODIFY BY HAND

final class UsersUpdateAuthenticatedRequest {const UsersUpdateAuthenticatedRequest({this.name, this.email, this.blog, this.twitterUsername, this.company, this.location, this.hireable, this.bio, });

factory UsersUpdateAuthenticatedRequest.fromJson(Map<String, dynamic> json) { return UsersUpdateAuthenticatedRequest(
  name: json['name'] as String?,
  email: json['email'] as String?,
  blog: json['blog'] as String?,
  twitterUsername: json['twitter_username'] as String?,
  company: json['company'] as String?,
  location: json['location'] as String?,
  hireable: json['hireable'] as bool?,
  bio: json['bio'] as String?,
); }

/// The new name of the user.
final String? name;

/// The publicly visible email address of the user.
final String? email;

/// The new blog URL of the user.
final String? blog;

/// The new Twitter username of the user.
final String? twitterUsername;

/// The new company of the user.
final String? company;

/// The new location of the user.
final String? location;

/// The new hiring availability of the user.
final bool? hireable;

/// The new short biography of the user.
final String? bio;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'email': ?email,
  'blog': ?blog,
  'twitter_username': ?twitterUsername,
  'company': ?company,
  'location': ?location,
  'hireable': ?hireable,
  'bio': ?bio,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'email', 'blog', 'twitter_username', 'company', 'location', 'hireable', 'bio'}.contains(key)); } 
UsersUpdateAuthenticatedRequest copyWith({String Function()? name, String Function()? email, String Function()? blog, String? Function()? twitterUsername, String Function()? company, String Function()? location, bool Function()? hireable, String Function()? bio, }) { return UsersUpdateAuthenticatedRequest(
  name: name != null ? name() : this.name,
  email: email != null ? email() : this.email,
  blog: blog != null ? blog() : this.blog,
  twitterUsername: twitterUsername != null ? twitterUsername() : this.twitterUsername,
  company: company != null ? company() : this.company,
  location: location != null ? location() : this.location,
  hireable: hireable != null ? hireable() : this.hireable,
  bio: bio != null ? bio() : this.bio,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UsersUpdateAuthenticatedRequest &&
          name == other.name &&
          email == other.email &&
          blog == other.blog &&
          twitterUsername == other.twitterUsername &&
          company == other.company &&
          location == other.location &&
          hireable == other.hireable &&
          bio == other.bio; } 
@override int get hashCode { return Object.hash(name, email, blog, twitterUsername, company, location, hireable, bio); } 
@override String toString() { return 'UsersUpdateAuthenticatedRequest(name: $name, email: $email, blog: $blog, twitterUsername: $twitterUsername, company: $company, location: $location, hireable: $hireable, bio: $bio)'; } 
 }
