  import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

import '../model/music_model.dart';

class MusicProvider with ChangeNotifier {
  Duration totalDuration = const Duration(seconds: 0);
  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
  int index=0;

  void changeIndex(int i)
  {
    index =i;
    notifyListeners();
  }


  Future<void> initMusic() async {
    await assetsAudioPlayer.open(
      Playlist(
        audios: musicModelList.map((e) => Audio.network(e.link!)).toList(),
        startIndex: index
      ),
      autoStart: false,
      showNotification: true,
    );
    totalDuration = assetsAudioPlayer.current.value!.audio.duration;
    notifyListeners();
  }

  bool isPlay = true;

  void changeButton(bool play)
  {
    isPlay = play;
    notifyListeners();
  }

  List<MusicModel> musicModelList =[

    MusicModel(name: "Tumhare hi rahenge",link: "https://pagalfree.com/musics/128-Tumhare Hi Rahenge Hum - Stree 2 128 Kbps.mp3",image: "assets/image/tumhare.jpg"),
    MusicModel(name: "Tum se hi",link: "https://pagalfree.com/musics/128-Tum Se Hi - Jab We Met 128 Kbps.mp3",image: "assets/image/jabwe.jpg"),
    MusicModel(name: "Tauba Tauba",link: "https://pagalfree.com/musics/128-Tauba Tauba - Bad Newz 128 Kbps.mp3",image: "assets/image/tauba1.jpg"),
    MusicModel(name:"Tum hi ho" ,link:"https://pagalfree.com/musics/128-Tum Hi Ho - Aashiqui 2 128 Kbps.mp3" ,image:"assets/image/img.png"),
    MusicModel(name:"Heeriye" ,link: "https://pagalfree.com/musics/128-Heeriye - Race 3 128 Kbps.mp3",image:"assets/image/heeriye.jpg" ),
    MusicModel(name: "Pehle bhi Main",link: "https://pagalfree.com/musics/128-Pehle Bhi Main - Animal 128 Kbps.mp3",image: "assets/image/animal.jpg"),
    MusicModel(name: "Apna bana le",link: "https://pagalfree.com/musics/128-Apna Bana Le - Bhediya 128 Kbps.mp3",image:"assets/image/bhediya.jpg" ),
    MusicModel(name: "Humdard",link: "https://pagalfree.com/musics/128-Humdard - Ek Villain 128 Kbps.mp3",image:"assets/image/img_1.png"),
    MusicModel(name: "Tainu khabar nahi",link:"https://pagalfree.com/musics/128-Tainu Khabar Nahi - Munjya 128 Kbps.mp3",image: "assets/image/Tainu.jpg"),
    MusicModel(name: "Khoobsurati",link:"https://pagalfree.com/musics/128-Khoobsurat - Stree 2 128 Kbps.mp3" ,image:"assets/image/khubsurat.jpg" ),

  ];
  void previousOrNext(int r)
  {
    if(r<0)
      {
        index=musicModelList.length-1;
      }
    else if(r>musicModelList.length-1)
      {
        index=0;
      }
    else
      {
        index=r;
      }
    notifyListeners();
  }
}
