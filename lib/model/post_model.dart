class Post {
  final String userName;
  final String userProfileImage;
  final String postContent;
  final String postImage;
  final String postDate;
  final int likes;
  final int comments;

  // Constructor
  Post({
    required this.userName,
    required this.userProfileImage,
    required this.postContent,
    required this.postImage,
    required this.postDate,
    required this.likes,
    required this.comments,
  });

  // Factory method to create a Post object from JSON
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userName: json['userName'],
      userProfileImage: json['userProfileImage'],
      postContent: json['postContent'],
      postImage: json['postImage'],
      postDate: json['postDate'],
      likes: json['likes'],
      comments: json['comments'],
    );
  }

  // Convert the Post object to JSON
  Map<String, dynamic> toJson() {
    return {
      'userName': userName,
      'userProfileImage': userProfileImage,
      'postContent': postContent,
      'postImage': postImage,
      'postDate': postDate,
      'likes': likes,
      'comments': comments,
    };
  }
}
