import 'dart:core';


class VnModel{

  String? date;
  String? title;
  String? music;

  VnModel({this.date,this.title,this.music});

  void setDate(String getDate){
    date = date;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setMusic(String getMusic){
    music = getMusic;
  }

  String? getDate(){
    return date;
  }

  String? getTitle(){
    return title;
  }

  String? getMusic(){
    return music;
  }

}



List<VnModel> getSlides() {
  List<String> nama = <String>[
    "Voice Note Azriel",
    "Voice Note Azriel",
    "Voice Note Azriel",
    "Voice Note Caca",
    "Voice Note Azriel",
    "Voice Note Azriel",
    "Voice Note Azriel",
    "Voice Note Azriel",
    "Voice Note Azriel",
    "Voice Note Azriel",
    "Voice Note Azriel",
    "Voice Note Azriel",
    "Voice Note Azriel",
    "Voice Note Azriel",
    "Voice Note Azriel",
    "Voice Note Azriel",
    "Voice Note Azriel",
    "Voice Note Azriel",
    "Voice Note Azriel",
    "Voice Note Caca",
    "Voice Note Azriel",
    "Voice Note Azriel",
    "Voice Note Azriel",
    "Voice Note Azriel",
    "Voice Note Azriel",
    "Voice Note Caca",
    "Voice Note Caca",
    "Voice Note Caca",
    "Voice Note Caca",
    "Voice Note Azriel",
    "Voice Note Caca",
    "Voice Note Caca",
    "Voice Note Caca",
    "Voice Note Caca",
    "Voice Note Azriel",
    "Voice Note Azriel",
    "Voice Note Caca",
    "Voice Note Caca",
    "Voice Note Azriel",
    "Voice Note Azriel",
    "Voice Note Caca",
    "Voice Note Caca",
    "Voice Note Caca",
    "Voice Note Caca",
    "Voice Note Caca",
    "Voice Note Caca",
    "Voice Note Spesial Caca",
    "Voice Note Caca",
    "Voice Note Caca",
  ];
  List<String> vn = <String>[
    "assets/vn/azriel_28juli.ogg",
    "assets/vn/azriel_29juli.ogg",
    "assets/vn/azriel_1ag.ogg",
    "assets/vn/caca_5ag.ogg",
    "assets/vn/azriel_5ag.ogg",
    "assets/vn/azriel_5ag2.ogg",
    "assets/vn/azriel_5ag3.ogg",
    "assets/vn/azriel_7ag.ogg",
    "assets/vn/azriel_9ag.ogg",
    "assets/vn/azriel_9ag2.ogg",
    "assets/vn/azriel_9ag3.ogg",
    "assets/vn/azriel_10ag.ogg",
    "assets/vn/azriel_10ag2.ogg",
    "assets/vn/azriel_10ag3.ogg",
    "assets/vn/azriel_10ag4.ogg",
    "assets/vn/azriel_10ag5.ogg",
    "assets/vn/azriel_10ag6.ogg",
    "assets/vn/azriel_10ag7.ogg",
    "assets/vn/azriel_10ag8.ogg",
    "assets/vn/caca_11ag.ogg",
    "assets/vn/azriel_11ag.ogg",
    "assets/vn/azriel_11ag2.ogg",
    "assets/vn/azriel_12ag.ogg",
    "assets/vn/azriel_13ag.ogg",
    "assets/vn/azriel_13ag2.ogg",
    "assets/vn/caca_26nov.ogg",
    "assets/vn/caca_26nov2.ogg",
    "assets/vn/caca_4des.ogg",
    "assets/vn/caca_4des2.ogg",
    "assets/vn/azriel_4des.ogg",
    "assets/vn/caca_4des3.ogg",
    "assets/vn/caca_4des4.ogg",
    "assets/vn/caca_4des5.ogg",
    "assets/vn/caca_4des6.ogg",
    "assets/vn/azriel_4des2.ogg",
    "assets/vn/azriel_4des3.ogg",
    "assets/vn/caca_4des7.ogg",
    "assets/vn/caca_4des8.ogg",
    "assets/vn/azriel_4des4.ogg",
    "assets/vn/azriel_4des5.ogg",
    "assets/vn/caca_13des.ogg",
    "assets/vn/caca_13des2.ogg",
    "assets/vn/caca_ani.opus",
    "assets/vn/caca_ani2.opus",
    "assets/vn/caca_ani3.opus",
    "assets/vn/caca_ani4.opus",
    "assets/vn/caca_spesial.mp3",
    "assets/vn/caca_27jan.ogg",
    "assets/vn/caca_27jan2.ogg",
  ];
  List<String> tanggal = <String>[
    "28 Juli 2021",
    "29 Juli 2021",
    "1 Agustus 2021",
    "5 Agustus 2021",
    "5 Agustus 2021",
    "5 Agustus 2021",
    "5 Agustus 2021",
    "7 Agustus 2021",
    "9 Agustus 2021",
    "9 Agustus 2021",
    "9 Agustus 2021",
    "10 Agustus 2021",
    "10 Agustus 2021",
    "10 Agustus 2021",
    "10 Agustus 2021",
    "10 Agustus 2021",
    "10 Agustus 2021",
    "10 Agustus 2021",
    "10 Agustus 2021",
    "11 Agustus 2021",
    "11 Agustus 2021",
    "11 Agustus 2021",
    "12 Agustus 2021",
    "13 Agustus 2021",
    "13 Agustus 2021",
    "26 November 2021",
    "26 November 2021",
    "4 Desember 2021",
    "4 Desember 2021",
    "4 Desember 2021",
    "4 Desember 2021",
    "4 Desember 2021",
    "4 Desember 2021",
    "4 Desember 2021",
    "4 Desember 2021",
    "4 Desember 2021",
    "4 Desember 2021",
    "4 Desember 2021",
    "4 Desember 2021",
    "4 Desember 2021",
    "13 Desember 2021",
    "13 Desember 2021",
    "16 Desember 2021",
    "16 Desember 2021",
    "16 Desember 2021",
    "16 Desember 2021",
    "21 Desember 2021",
    "27 Januari 2022",
    "27 Januari 2022",
  ];
  List<VnModel> slides = [];
  for(var i = 0; i < vn.length; i++){

    slides.add(VnModel(music: vn[i],title: nama[i],date: tanggal[i]));
  }

  return slides;
}