import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_github_user/models/users_model.dart';
import 'package:get_github_user/services/http_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  User? user;
  bool isLoading = false;
  
  void _getUser() async{
    setState(() {
      isLoading = true;
    });
    await Network.getHttp(Network.apiGet, Network.paramsEmpty()).then((value) {
      _getResponse(userFromJson(value));
    });
  }
  
  void _getResponse(User _user){
    setState(() {
      isLoading = false;
      user = _user;
      print(user!.name);
    });
}

@override
  void initState() {
  _getUser();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: !isLoading && user != null ? SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            user!.avatarUrl == null ? const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/user.png'),
            ) : ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: CachedNetworkImage(
                height: 80,
                width: 80,
                imageUrl: user!.avatarUrl!,
                placeholder: (context, url) => const CircularProgressIndicator(strokeWidth: 3, color: Color.fromRGBO(193, 53, 132, 1),),
              ),
            ),

            const SizedBox(height: 10,),

            Text(user!.name!, style: const TextStyle(fontSize: 18),),

            const SizedBox(height: 10,),

            Text('Username:  ${user!.login!}', style: const TextStyle(fontSize: 16),),

            const SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Repositories:  ${user!.publicRepos!}', style: const TextStyle(fontSize: 16),),
                  Text('Followers:  ${user!.followers!}', style: const TextStyle(fontSize: 16),),
                  Text('Followings:  ${user!.following!}', style: const TextStyle(fontSize: 16),),
                ],
              ),
            ),
          ],
        ),
      ) : SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const Center(child: CircularProgressIndicator(),),
      ),
    );
  }
}
