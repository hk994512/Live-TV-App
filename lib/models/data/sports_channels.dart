import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SportsChannels {
  final String title;
  final String imageUrl;
  final String videoUrl;
  SportsChannels(
      {required this.title, required this.imageUrl, required this.videoUrl});
}

class SportsChannelsList with ChangeNotifier {
  
  final List<SportsChannels> _sportsItems = [

    SportsChannels(
        title: "A Sports",
        imageUrl: "assets/images/a-sports.jpg",
        videoUrl: "https://sfux-ext.sfux.info/hls/chapter/105/1588724110/1588724110.m3u8"),
  ]; 
  List<SportsChannels> get sItems {
    return [..._sportsItems];
  }
  
 Future<void> lauchUrl(String url) async{  
  try{
if(!await launchUrl(Uri.parse(url))){    
       throw Exception("Could not lauch $url");
  }
  }
  catch(e){
    Uri.parse("Not a Valid Url.Try Enter another one.");
  }
       
    notifyListeners();
      }
}
