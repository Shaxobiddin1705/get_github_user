import 'dart:convert';
/// login : "Shaxobiddin1705"
/// id : 77107287
/// node_id : "MDQ6VXNlcjc3MTA3Mjg3"
/// avatar_url : "https://avatars.githubusercontent.com/u/77107287?v=4"
/// gravatar_id : ""
/// url : "https://api.github.com/users/Shaxobiddin1705"
/// html_url : "https://github.com/Shaxobiddin1705"
/// followers_url : "https://api.github.com/users/Shaxobiddin1705/followers"
/// following_url : "https://api.github.com/users/Shaxobiddin1705/following{/other_user}"
/// gists_url : "https://api.github.com/users/Shaxobiddin1705/gists{/gist_id}"
/// starred_url : "https://api.github.com/users/Shaxobiddin1705/starred{/owner}{/repo}"
/// subscriptions_url : "https://api.github.com/users/Shaxobiddin1705/subscriptions"
/// organizations_url : "https://api.github.com/users/Shaxobiddin1705/orgs"
/// repos_url : "https://api.github.com/users/Shaxobiddin1705/repos"
/// events_url : "https://api.github.com/users/Shaxobiddin1705/events{/privacy}"
/// received_events_url : "https://api.github.com/users/Shaxobiddin1705/received_events"
/// type : "User"
/// site_admin : false
/// name : "Shaxobiddin"
/// company : null
/// blog : ""
/// location : null
/// email : null
/// hireable : null
/// bio : null
/// twitter_username : null
/// public_repos : 31
/// public_gists : 0
/// followers : 3
/// following : 4
/// created_at : "2021-01-07T12:48:09Z"
/// updated_at : "2021-12-20T06:16:49Z"

User userFromJson(String str) => User.fromJson(json.decode(str));
String userToJson(User data) => json.encode(data.toJson());
class User {
  User({
      this.login, 
      this.id, 
      this.nodeId, 
      this.avatarUrl, 
      this.gravatarId, 
      this.url, 
      this.htmlUrl, 
      this.followersUrl, 
      this.followingUrl, 
      this.gistsUrl, 
      this.starredUrl, 
      this.subscriptionsUrl, 
      this.organizationsUrl, 
      this.reposUrl, 
      this.eventsUrl, 
      this.receivedEventsUrl, 
      this.type, 
      this.siteAdmin, 
      this.name, 
      this.company, 
      this.blog, 
      this.location, 
      this.email, 
      this.hireable, 
      this.bio, 
      this.twitterUsername, 
      this.publicRepos, 
      this.publicGists, 
      this.followers, 
      this.following, 
      this.createdAt, 
      this.updatedAt,});

  User.fromJson(dynamic json) {
    login = json['login'];
    id = json['id'];
    nodeId = json['node_id'];
    avatarUrl = json['avatar_url'];
    gravatarId = json['gravatar_id'];
    url = json['url'];
    htmlUrl = json['html_url'];
    followersUrl = json['followers_url'];
    followingUrl = json['following_url'];
    gistsUrl = json['gists_url'];
    starredUrl = json['starred_url'];
    subscriptionsUrl = json['subscriptions_url'];
    organizationsUrl = json['organizations_url'];
    reposUrl = json['repos_url'];
    eventsUrl = json['events_url'];
    receivedEventsUrl = json['received_events_url'];
    type = json['type'];
    siteAdmin = json['site_admin'];
    name = json['name'];
    company = json['company'];
    blog = json['blog'];
    location = json['location'];
    email = json['email'];
    hireable = json['hireable'];
    bio = json['bio'];
    twitterUsername = json['twitter_username'];
    publicRepos = json['public_repos'];
    publicGists = json['public_gists'];
    followers = json['followers'];
    following = json['following'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  String? login;
  int? id;
  String? nodeId;
  String? avatarUrl;
  String? gravatarId;
  String? url;
  String? htmlUrl;
  String? followersUrl;
  String? followingUrl;
  String? gistsUrl;
  String? starredUrl;
  String? subscriptionsUrl;
  String? organizationsUrl;
  String? reposUrl;
  String? eventsUrl;
  String? receivedEventsUrl;
  String? type;
  bool? siteAdmin;
  String? name;
  dynamic company;
  String? blog;
  dynamic location;
  dynamic email;
  dynamic hireable;
  dynamic bio;
  dynamic twitterUsername;
  int? publicRepos;
  int? publicGists;
  int? followers;
  int? following;
  String? createdAt;
  String? updatedAt;
User copyWith({  String? login,
  int? id,
  String? nodeId,
  String? avatarUrl,
  String? gravatarId,
  String? url,
  String? htmlUrl,
  String? followersUrl,
  String? followingUrl,
  String? gistsUrl,
  String? starredUrl,
  String? subscriptionsUrl,
  String? organizationsUrl,
  String? reposUrl,
  String? eventsUrl,
  String? receivedEventsUrl,
  String? type,
  bool? siteAdmin,
  String? name,
  dynamic company,
  String? blog,
  dynamic location,
  dynamic email,
  dynamic hireable,
  dynamic bio,
  dynamic twitterUsername,
  int? publicRepos,
  int? publicGists,
  int? followers,
  int? following,
  String? createdAt,
  String? updatedAt,
}) => User(  login: login ?? this.login,
  id: id ?? this.id,
  nodeId: nodeId ?? this.nodeId,
  avatarUrl: avatarUrl ?? this.avatarUrl,
  gravatarId: gravatarId ?? this.gravatarId,
  url: url ?? this.url,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  followersUrl: followersUrl ?? this.followersUrl,
  followingUrl: followingUrl ?? this.followingUrl,
  gistsUrl: gistsUrl ?? this.gistsUrl,
  starredUrl: starredUrl ?? this.starredUrl,
  subscriptionsUrl: subscriptionsUrl ?? this.subscriptionsUrl,
  organizationsUrl: organizationsUrl ?? this.organizationsUrl,
  reposUrl: reposUrl ?? this.reposUrl,
  eventsUrl: eventsUrl ?? this.eventsUrl,
  receivedEventsUrl: receivedEventsUrl ?? this.receivedEventsUrl,
  type: type ?? this.type,
  siteAdmin: siteAdmin ?? this.siteAdmin,
  name: name ?? this.name,
  company: company ?? this.company,
  blog: blog ?? this.blog,
  location: location ?? this.location,
  email: email ?? this.email,
  hireable: hireable ?? this.hireable,
  bio: bio ?? this.bio,
  twitterUsername: twitterUsername ?? this.twitterUsername,
  publicRepos: publicRepos ?? this.publicRepos,
  publicGists: publicGists ?? this.publicGists,
  followers: followers ?? this.followers,
  following: following ?? this.following,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['login'] = login;
    map['id'] = id;
    map['node_id'] = nodeId;
    map['avatar_url'] = avatarUrl;
    map['gravatar_id'] = gravatarId;
    map['url'] = url;
    map['html_url'] = htmlUrl;
    map['followers_url'] = followersUrl;
    map['following_url'] = followingUrl;
    map['gists_url'] = gistsUrl;
    map['starred_url'] = starredUrl;
    map['subscriptions_url'] = subscriptionsUrl;
    map['organizations_url'] = organizationsUrl;
    map['repos_url'] = reposUrl;
    map['events_url'] = eventsUrl;
    map['received_events_url'] = receivedEventsUrl;
    map['type'] = type;
    map['site_admin'] = siteAdmin;
    map['name'] = name;
    map['company'] = company;
    map['blog'] = blog;
    map['location'] = location;
    map['email'] = email;
    map['hireable'] = hireable;
    map['bio'] = bio;
    map['twitter_username'] = twitterUsername;
    map['public_repos'] = publicRepos;
    map['public_gists'] = publicGists;
    map['followers'] = followers;
    map['following'] = following;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}