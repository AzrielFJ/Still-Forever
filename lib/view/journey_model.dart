import 'dart:core';

class WalkthroughModel{

String? imageAssetPath;
String? title;
String? desc;

WalkthroughModel({this.imageAssetPath,this.title,this.desc});

void setImageAssetPath(String getImageAssetPath){
  imageAssetPath = getImageAssetPath;
}

void setTitle(String getTitle){
  title = getTitle;
}

void setDesc(String getDesc){
  desc = getDesc;
}

String? getImageAssetPath(){
  return imageAssetPath;
}

String? getTitle(){
  return title;
}

String? getDesc(){
  return desc;
}

}



List<WalkthroughModel> getSlides() {
  List<String> image = [
    "assets/telegram.png",
    "assets/tele1.jpg",
    "assets/tele2.jpg",
    "assets/tele3.jpg",
    "assets/tele4.jpeg",
    "assets/tele5.jpg",
    "assets/tele6.jpg",
    "assets/tele7.jpg",
    "assets/tele8.jpg",
  ];
  List<String> list_title = [
    "Telegram\n" +
        "x\n" +
        "Pertemanan Sejiwa",
    "#1 The Start Of The Journey",
    "#2 Mysterious",
    "#3 Similarity",
    "#4 Friendly",
    "#5 Approach",
    "#6 Attention",
    "#7 Invitation",
    "#8 Convenience"
  ];
  List<String> list_description = [
    "",
    "Bisa dibilang mungkin kisah ini berawal dari Telegram lebih tepatnya dari Grup Pertemanan Sejiwa.Saat itu sebenarnya aku hanya iseng mencari teman yang emang orang Cimahi/Bandung dan kebetulan kamu muncul di grup itu dan bilang dari Kota Cimahi, dan disitu awal aku menemukanmu dari Grup Pertemanan Sejiwa dan semoga saja kita berdua memang bisa sejiwa untuk kedepannya",
    "Dan aku mencoba untuk berani chat kamu  disinilah rasa penasaran aku terhadap kamu semakin muncul, disaat aku bertanya kepadamu perihal nama kamu saat itu kamu hanya menjawab nama panggilan \"Caca\" saat itu aku berfikir kamu orang nya cuek dan juga Mysterious dan itulah mengapa rasa penasaran aku semakin muncul yaitu ingin tahu tentang kamu lebih dekat",
    "Yang sebelumnya aku bilang kamu itu sedikit cuek tapi disaat aku mengetahui kita seumuran dan seangkatan disitu aku merasa wah pas banget ada yang seumuran dan juga sekolah kita sama yaitu SMK , jadi aku ngerasa ngobrolnya nanti tidak akan terlalu canggung walaupun kita berbeda sekolah dan dari awal kamu orang nya sedikit cuek juga tapi itu yang membuat aku ingin lebih mengenal kamu",
    "Friendly tapi cuek itu yang ada di pikiran aku pertama kali tentang dirimu yang mungkin jarang aku temui dari orang-orang yang aku temui sebelumnya, ya walaupun dibalesnya itu lama dan kadang singkat juga tapi aku senang bisa bertemu dengan perempuan yang tidak flat saat di ajak ngobrol",
    "Dan yang sebelumnya aku bilang rasa penasaran aku muncul begitu saja akhirnya aku semakin ingin tahu tentang dirimu yang jelas waktu itu 1 hal yang sangat ingin aku tahu itu adalah nama kamu karena kamu hanya menjawab nama panggilan saja itu yang membuat aku mencoba untuk lebih dekat denganmu dan akhirnya aku tahu nama kamu dan disitu kamu kaget aku tau nama kamu darimana lucu sih hahaha",
    "Disinilah awal mula aku merasa kamu berbeda dari yang lain, kamu memberi perhatian ke aku walaupun saat itu kita baru berkenalan mungkin 4 hari dan bisa disebut stranger walaupun hal kecil tapi itu yang membuat aku semakin ingin lebih dekat dengan kamu karena aku merasa nyaman saat aku kenal dengan kamu",
    "Saat itu aku mengajak kamu untuk main dan jalan denganku ya walaupun kamu gak peka malah bertanya main sama teteh engga dan bilang malah pingin ketemu arvino disitu jujur agak kesel dan juga kamu bilang iya mau itu setelah aku tanya lagi tapi disitu aku sangat senang kamu mau diajak main tapi bingung juga karena itu kali pertama aku main berdua sama cewek apalagi yang kenal dari online",
    "Berawal dari ketemuan disitu aku mulai merasa nyaman dekat denganmu mengobrol langsung dan juga bisa tahu lebih jauh tentangmu dan akhirnya kita pindah ke whatsapp dan awalnya aku ingin bertanya nomor whatsapp kamu saat pulang hanya saja aku masih malu buat menanyakan nya dan aku senang karena jalan untuk mengenal kamu mulai terbuka sedikit demi sedikit dan disitulah perjalanan dari kedekatan kita dan akhir dari Journey di Telegram"
  ];
  List<WalkthroughModel> slides = [];
  for(var i = 0; i < list_description.length; i++){

    slides.add(WalkthroughModel(desc: list_description[i],title: list_title[i],imageAssetPath: image[i]));
  }

  return slides;
}