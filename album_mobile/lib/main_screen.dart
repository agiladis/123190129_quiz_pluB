import 'package:album_mobile/home_page.dart';

import 'top_album.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Dummy"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final TopAlbum album = topAlbumList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomePage(username: album.albumName);
              }));
            },
            child: Card(
              child: Row(
                children: [
                  Image.network(album.imageUrls,width: 64,),
                  // Text(album.albumName),
                  Text(album.songs[0])
                ],
              ),
            ),
          );
        },
        itemCount: topAlbumList.length,),
    );
  }
}
