import 'package:flutter/material.dart';

import 'channel.dart';

class ChannelsList with ChangeNotifier {
  final List<Channel> _items = [
    Channel(
        title: "Geo News",
        image: "assets/images/geo-news.jpg",
        videoUrl:
            "https://jk3lz82elw79-hls-live.5centscdn.com/GEONEWS/3500ba09d0538297440ca620c9dd46bf.sdp/playlist.m3u8"),
    Channel(
        title: "Ary News",
        image: "assets/images/ary-news.jpg",
        videoUrl: "http://m.live.net.sa:1935/live/sunnah/playlist.m3u8"),
    Channel(
        title: "GNN News",
        image: "assets/images/gnn-logo.jpg",
        videoUrl:
            "https://jk3lz82elw79-hls-live.5centscdn.com/GEONEWS/3500ba09d0538297440ca620c9dd46bf.sdp/playlist.m3u8"),
    Channel(
        title: "Express News",
        image: "assets/images/express.jpg",
        videoUrl:
            "https://jk3lz82elw79-hls-live.5centscdn.com/GEONEWS/3500ba09d0538297440ca620c9dd46bf.sdp/playlist.m3u8"),
    Channel(
        title: "Samma News",
        image: "assets/images/samaa.jpg",
        videoUrl:
            "https://jk3lz82elw79-hls-live.5centscdn.com/GEONEWS/3500ba09d0538297440ca620c9dd46bf.sdp/playlist.m3u8"),
    Channel(
        title: "24 News",
        image: "assets/images/24-news.jpg",
        videoUrl:
            "https://jk3lz82elw79-hls-live.5centscdn.com/GEONEWS/3500ba09d0538297440ca620c9dd46bf.sdp/playlist.m3u8"),
    Channel(
        title: "Lahore News",
        image: "assets/images/lahore-news.jpg",
        videoUrl:
            "https://cdn.playtv.com.pk/uploads/media/LahoreNews/lahorenews.stream_360p/playlist.m3u8"),
    Channel(
        title: "C42 News",
        image: "assets/images/city-42.jpg",
        videoUrl:
            "https://jk3lz82elw79-hls-live.5centscdn.com/GEONEWS/3500ba09d0538297440ca620c9dd46bf.sdp/playlist.m3u8"),
    Channel(
        title: "Hum TV",
        image: "assets/images/hum.jpg",
        videoUrl:
            "https://jk3lz82elw79-hls-live.5centscdn.com/GEONEWS/3500ba09d0538297440ca620c9dd46bf.sdp/playlist.m3u8"),
    Channel(
        title: "Ary Digital",
        image: "assets/images/ary-digital.jpg",
        videoUrl: "http://www.elahmad.com/tv/m3u8/kuwait_tv_8.m3u8?"),
  ];

  List<Channel> get items {
    return [..._items];
  }
}
