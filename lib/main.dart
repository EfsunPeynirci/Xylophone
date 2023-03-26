import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){
    final player = AudioPlayer();
    player.play(AssetSource('sound$soundNumber.wav'));
  }

  //Burada void kullanılmaz. Cunku bizim bu fonksiyonu return yapmamız lazim. void fonksiyonunda output olmuyordu. Ama diger fonksiyonlarda output oluyor.
  //Yani yukaridaki void fonksiyonuna baktigimizda iceride bir islem yapmiyoruz. playSound fonksiyonunu kullanarak daha kolay bir sekilde yaziyoruz.
  //Eger o fonksiyonu yazmasaydik 7 tane TextButton' da onPressed icerisini defalarca 7 kez yazacaktik.
  //Ama unutmayalim ki void playSound da bir output' umuz yoktu. Asagidaki fonksiyonda ise bizim bir output' umuz var. output ise burada playSound.
  //Bu sebeple bu fonksiyonu return ile yazdik. return oldugu icin de bu fonksiyonun ozelligine int, String gibi bir tanim yazacaktik.
  //Burada ise expanded kullandik. Cunku kodun icerisinde dondurdugumuz widget expanded.

  Expanded buildKey(Color color,  int soundNumber, String animals){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Image.asset(animals),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch ,
              children: [
                buildKey(Colors.red, 1, 'images/bird.png'),
                buildKey(Colors.orange, 2, 'images/cat.png'),
                buildKey(Colors.yellow, 3, 'images/rooster.png'),
                buildKey(Colors.pink, 4, 'images/cow.png'),
                buildKey(Colors.green, 5, 'images/dog.png'),
                buildKey(Colors.purple, 6, 'images/donkey.png'),
                buildKey(Colors.blue, 7, 'images/lion.png'),
              ],
            ),
            ),
        ),
      );
  }
}







