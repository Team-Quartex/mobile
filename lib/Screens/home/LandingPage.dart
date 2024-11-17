import 'package:flutter/material.dart';
import 'package:trova/model/post_model.dart';

class Landingpage extends StatefulWidget {
  const Landingpage({super.key});

  @override
  State<Landingpage> createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage> {

  Future<List<Post>> fetchPosts() async {
    await Future.delayed(Duration(seconds: 2));
    return [
      Post(
        userName: 'John Doe',
        userProfileImage: 'assets/profile.jpg',
        postContent: 'Hi, Everyone! Today I\'m in the world\'s most beautiful island @SriLanka',
        postImage: 'assets/pic1.jpg',
        postDate: '1 day ago',
        likes: 4200,
        comments: 3500,
      ),
      Post(
        userName: 'Jane Doe',
        userProfileImage: 'assets/profile.jpg',
        postContent: 'Exploring the amazing lighthouse in Sri Lanka! #SriLanka #travel',
        postImage: 'assets/pic1.jpg',
        postDate: '2 days ago',
        likes: 2800,
        comments: 1900,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Post>>(
          future: fetchPosts(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Center(child: Text('No posts available'));
            } else {
              final posts = snapshot.data!;
              return ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  return buildPostCard(posts[index]);
                },
              );
            }
          },
        );
  }

  Widget buildPostCard(Post post) {
    return Card(
      margin: EdgeInsets.all(10),
      color: Color(0xFFE0EEEE),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(post.userProfileImage),
                  radius: 25,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(post.userName, style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(post.postDate, style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text('Follow', style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
          ),
          // Post Content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(post.postContent),
          ),

          Image.asset(post.postImage),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.thumb_up, size: 20, color: Color(0xFFFF0000)),
                  onPressed: () {},
                ),
                SizedBox(width: 5),
                Text('${post.likes} Likes', style: TextStyle(color: Colors.grey)),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.comment, size: 20, color: Colors.grey),
                  onPressed: () {},
                ),
                SizedBox(width: 5),
                Text('${post.comments} Comments', style: TextStyle(color: Colors.grey)),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.share, size: 20, color: Colors.grey),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          // Comment Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Type a comment...',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.send),
              ),
            ),
          ),
        ],
      ),
    );
  }
}