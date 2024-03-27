import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:match_word/setting/DataMultiPlayer.dart';
class Two extends StatefulWidget {
  @override
  _Two createState() => _Two();
}


class _Two extends State<Two> {
  List<String> picImages = [
    "Pic/Castle.png",
    "Pic/King.png",
    "Pic/Queen.png",
    "Pic/Wizard.png",
    "Pic/Knight.png",
    "Pic/Kid.png",
    "Pic/archer.png",
  ];

  List<String> wordImages = [
    "Word/Castle.png",
    "Word/King.png",
    "Word/Queen.png",
    "Word/Wizard.png",
    "Word/Knight.png",
    "Word/Kid.png",
    "Word/archer.png",
  ];

  List<bool> isFlipped = [];
  int maxTime = 30;
  int timeLeft = 0;
  int flips = 0;
  int matchedCard = 0;
  bool disableDeck = false;
  bool isPlaying = false;
  String cardOne = "";
  String cardTwo = "";
  Timer? timer;

  @override
  void initState() {
    super.initState();
    shuffleCard();
  }

  void showResultDialog(bool isWin) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
            child: Text(
              isWin ? "You Win" : "You Lose",
              style: TextStyle(
                color: isWin ? Colors.green : Colors.red,
              ),
            ),
          ),
          content: Text("Total flips: $flips\nWinner: $currentPlayer"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                shuffleCard();
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }


  void initTimer() {
    if (timeLeft <= 0 || matchedCard == DataCountCardTwo.countCard.first.count_card ~/ 2) {
      timer?.cancel();
      if (matchedCard == DataCountCardTwo.countCard.first.count_card ~/ 2) {
        showResultDialog(true); // แสดงผลว่าชนะ
      } else {
        disableDeck = true;
        showResultDialog(false); // แสดงผลว่าแพ้
        Future.delayed(Duration(milliseconds: 500), () {
          disableDeck = false;
        });
      }
      return;
    }
    setState(() {
      timeLeft--;
    });
  }
  void showEnlargedImages(String imagePath1, String imagePath2) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent, // ตั้งค่าสีพื้นหลังของ Dialog เป็นโปร่งใส
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Image.asset(
                  imagePath1,
                  height: 200, // กำหนดความสูงของรูปให้ใหญ่ขึ้น
                  width: 150, // กำหนดความกว้างของรูปให้ใหญ่ขึ้น
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Image.asset(
                  imagePath2,
                  height: 200, // กำหนดความสูงของรูปให้ใหญ่ขึ้น
                  width: 150, // กำหนดความกว้างของรูปให้ใหญ่ขึ้น
                ),
              ),
            ],
          ),
        );
      },
    );
  }


  String currentPlayer = 'Player 1'; // กำหนดค่าเริ่มต้นให้กับ currentPlayer

  void flipCard(String clickedCard) {
    if (!isPlaying) {
      isPlaying = true;
      timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
        initTimer();
      });
    }

    setState(() {
      flips++;
    });

    if (clickedCard != cardOne && !disableDeck && timeLeft > 0) {
      if (cardOne.isEmpty) {
        setState(() {
          cardOne = clickedCard;
        });
      } else {
        setState(() {
          cardTwo = clickedCard;
          disableDeck = true;
        });
        String cardOneImg = getImagePath(cardOne);
        String cardTwoImg = getImagePath(cardTwo);

        matchCards(cardOneImg, cardTwoImg); // ส่ง currentPlayer ไปยัง matchCards

        // เรียกใช้งานฟังก์ชันเพื่อแสดงภาพใหญ่
        showEnlargedImages(cardOneImg, cardTwoImg);

        // ตั้งค่า Timer เพื่อปิดหน้าจอภาพใหญ่ลงหลังจากผ่านไป 1 วินาที
        Timer(Duration(milliseconds: 400), () {
          Navigator.of(context).pop(); // ปิดหน้าจอภาพใหญ่
        });
      }
    }
  }


  String getImagePath(String cardIndex) {
    int index = int.parse(cardIndex);
    if (index <= picImages.length) {
      return 'assets/${picImages[index - 1]}';
    } else {
      return 'assets/${wordImages[index - picImages.length - 1]}';
    }
  }

  void matchCards(String img1, String img2) {
    List<String> img1Parts = img1.split('/');
    List<String> img2Parts = img2.split('/');

    if (img1Parts.last == img2Parts.last) {
      matchedCard++;
      setState(() {
        cardOne = "";
        cardTwo = "";
        disableDeck = false;
      });
    } else {
      Future.delayed(Duration(milliseconds: 400), () {
        if (isFlipped[int.parse(cardOne) - 1]) {
          setState(() {
            isFlipped[int.parse(cardOne) - 1] = false;
          });
        }
        if (isFlipped[int.parse(cardTwo) - 1]) {
          setState(() {
            isFlipped[int.parse(cardTwo) - 1] = false;
          });
        }
        setState(() {
          cardOne = "";
          cardTwo = "";
          disableDeck = false;
          currentPlayer = currentPlayer == 'Player 1' ? 'Player 2' : 'Player 1'; // เปลี่ยนผู้เล่น
          timeLeft = maxTime; // เริ่มต้นนับเวลาใหม่
        });
      });
    }
  }



  void shuffleCard() {
    Random random = Random();
    List<int> randomPositions = [];

    while (randomPositions.length < DataCountCardTwo.countCard.first.count_card ~/ 2) {
      int randomPosition = random.nextInt(picImages.length);
      if (!randomPositions.contains(randomPosition)) {
        randomPositions.add(randomPosition);
      }
    }

    List<String> shuffledPicImages = [];
    List<String> shuffledWordImages = [];
    List<bool> isPic = []; // เพิ่มตัวแปรเพื่อเก็บข้อมูลว่าแต่ละการ์ดควรเป็นรูปภาพหรือคำอธิบาย

    // สุ่มเลือกว่าแต่ละการ์ดควรเป็นรูปภาพหรือคำอธิบาย
    for (int i = 0; i < DataCountCardTwo.countCard.first.count_card ~/ 2; i++) {
      isPic.add(random.nextBool());
    }

    // สร้างลิสต์การ์ดใหม่โดยเลือกตามค่าที่สุ่มได้
    for (int i = 0; i < DataCountCardTwo.countCard.first.count_card ~/ 2; i++) {
      if (isPic[i]) {
        shuffledPicImages.add(picImages[randomPositions[i]]);
        shuffledWordImages.add(wordImages[randomPositions[i]]);
      } else {
        shuffledPicImages.add(wordImages[randomPositions[i]]);
        shuffledWordImages.add(picImages[randomPositions[i]]);
      }
    }

    setState(() {
      picImages = shuffledPicImages;
      wordImages = shuffledWordImages;
      timeLeft = maxTime;
      flips = 0;
      matchedCard = 0;
      cardOne = "";
      cardTwo = "";
      timer?.cancel();
      isPlaying = false;
      isFlipped = List.filled(DataCountCardTwo.countCard.first.count_card, false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Two Player Mode',
          style: TextStyle(
            color: Colors.black,
            fontSize: 40.0,
            fontFamily: 'TonphaiThin',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/BgGame.png',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        color: currentPlayer == 'Player 1' ? Colors.red : Colors.transparent, // เลือกสีแดงหรือสีโปร่งใสตามตำแหน่งปัจจุบันของผู้เล่น
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Player 1',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: currentPlayer == 'Player 1' ? Colors.white : Colors.black), // เลือกสีของข้อความตามตำแหน่งปัจจุบันของผู้เล่น
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                        color: currentPlayer == 'Player 2' ? Colors.red : Colors.transparent, // เลือกสีแดงหรือสีโปร่งใสตามตำแหน่งปัจจุบันของผู้เล่น
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Player 2',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: currentPlayer == 'Player 2' ? Colors.white : Colors.black), // เลือกสีของข้อความตามตำแหน่งปัจจุบันของผู้เล่น
                      ),
                    ),
                  ],
                ),
                Text(
                  'Time: $timeLeft',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20.0),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: DataColumCardTwo.count.first.column_card,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 30,
                    ),
                    itemCount: DataCountCardTwo.countCard.first.count_card,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          if (index < picImages.length + wordImages.length &&
                              !disableDeck &&
                              !isFlipped[index]) {
                            flipCard((index + 1).toString());
                            setState(() {
                              isFlipped[index] = true;
                            });
                          }
                        },
                        child: Container(
                          child: Transform.scale(
                            scale: 1.1,
                            child: InkWell(
                              child: isFlipped[index]
                                  ? Image.asset(
                                getImagePath((index + 1).toString()),
                                fit: BoxFit.cover,
                              )
                                  : Image.asset(
                                'assets/BgCard/Star.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class EnlargedImage extends StatelessWidget {
  final String imagePath;

  const EnlargedImage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Container(
          color: Colors.black.withOpacity(0.8),
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
