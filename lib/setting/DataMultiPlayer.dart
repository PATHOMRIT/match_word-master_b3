import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:match_word/login/Single_Multi.dart';
import 'package:match_word/multi/SelectPeople.dart';
import 'package:match_word/setting/Setting.dart';

class MultiPlayerSetting extends StatefulWidget {
  MultiPlayerSetting({Key? key}) : super(key: key);

  @override
  _MultiPlayerSetting createState() => _MultiPlayerSetting();
}

class DataColumCardTwo {
  static List<InputColumnTwo> count = [InputColumnTwo(column_card: 4)];
}

class DataCountCardTwo {
  static List<InputCardTwo> countCard = [InputCardTwo(count_card: 12)];
}

class DataColumCardThree {
  static List<InputColumnThree> count = [InputColumnThree(column_card: 5)];
}

class DataCountCardThree {
  static List<InputCardThree> countCard = [InputCardThree(count_card: 16)];
}

class DataColumCardFour {
  static List<InputColumnFour> count = [InputColumnFour(column_card: 6)];
}

class DataCountCardFour {
  static List<InputCardFour> countCard = [InputCardFour(count_card: 20)];
}

class _MultiPlayerSetting extends State<MultiPlayerSetting> {
  TextEditingController _columnControllerTwo = TextEditingController();
  TextEditingController _countControllerTwo = TextEditingController();
  TextEditingController _columnControllerThree = TextEditingController();
  TextEditingController _countControllerThree = TextEditingController();
  TextEditingController _columnControllerFour = TextEditingController();
  TextEditingController _countControllerFour = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bgSetting.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Two Player Mode Setting",
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'TonphaiThin',
                            fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              blurRadius: 60,
                              color: Colors.white,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: TextField(
                                  controller: _columnControllerTwo,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    labelText: 'Column card',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    labelStyle: TextStyle(
                                      fontFamily: 'TonphaiThin',
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20), // Spacer between sections
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: TextField(
                                  controller: _countControllerTwo,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    labelText: 'Sum card',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    labelStyle: TextStyle(
                                      fontFamily: 'TonphaiThin',
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text("Three Player Mode Setting",
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'TonphaiThin',
                            fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              blurRadius: 60,
                              color: Colors.white,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: TextField(
                                  controller: _columnControllerThree,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    labelText: 'Column card',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    labelStyle: TextStyle(
                                      fontFamily: 'TonphaiThin',
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20), // Spacer between sections
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: TextField(
                                  controller: _countControllerThree,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    labelText: 'Sum card',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    labelStyle: TextStyle(
                                      fontFamily: 'TonphaiThin',
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text("Four Player Mode Setting",
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'TonphaiThin',
                            fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              blurRadius: 60,
                              color: Colors.white,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: TextField(
                                  controller: _columnControllerFour,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    labelText: 'Column card',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    labelStyle: TextStyle(
                                      fontFamily: 'TonphaiThin',
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20), // Spacer between sections
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: TextField(
                                  controller: _countControllerFour,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    labelText: 'Sum card',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    labelStyle: TextStyle(
                                      fontFamily: 'TonphaiThin',
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            String columnTextTwo =
                                _columnControllerTwo.text.isNotEmpty
                                    ? _columnControllerTwo.text
                                    : "4";
                            String countTextTwo =
                                _countControllerTwo.text.isNotEmpty
                                    ? _countControllerTwo.text
                                    : "12";
                            String columnTextThree =
                                _columnControllerThree.text.isNotEmpty
                                    ? _columnControllerThree.text
                                    : "5";
                            String countTextThree =
                                _countControllerThree.text.isNotEmpty
                                    ? _countControllerThree.text
                                    : "16";
                            String columnTextFour =
                                _columnControllerFour.text.isNotEmpty
                                    ? _columnControllerFour.text
                                    : "6";
                            String countTextFour =
                                _countControllerFour.text.isNotEmpty
                                    ? _countControllerFour.text
                                    : "20";

                            int countCardTwo = int.parse(countTextTwo);
                            int countCardThree = int.parse(countTextThree);
                            int countCardFour = int.parse(countTextFour);
                            if (countCardTwo % 2 == 0 &&
                                countCardThree % 2 == 0 &&
                                countCardFour % 2 == 0) {
                              InputCardTwo inputDataCardTwo =
                                  InputCardTwo(count_card: countCardTwo);
                              DataCountCardTwo.countCard = [inputDataCardTwo];
                              InputCardThree inputDataCardThree =
                                  InputCardThree(count_card: countCardThree);
                              DataCountCardThree.countCard = [
                                inputDataCardThree
                              ];
                              InputCardFour inputDataCardFour =
                                  InputCardFour(count_card: countCardFour);
                              DataCountCardFour.countCard = [inputDataCardFour];
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SelectPeople()),
                              );
                            } else {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text("Warning"),
                                    content: Text("Please enter even number"),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text("OK"),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                            InputColumnTwo inputDataTwo = InputColumnTwo(
                                column_card: int.parse(columnTextTwo));
                            DataColumCardTwo.count = [inputDataTwo];
                            InputColumnThree inputDataThree = InputColumnThree(
                                column_card: int.parse(columnTextThree));
                            DataColumCardThree.count = [inputDataThree];
                            InputColumnFour inputDataFour = InputColumnFour(
                                column_card: int.parse(columnTextFour));
                            DataColumCardFour.count = [inputDataFour];
                          },
                          child: Text(
                            "Save",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontFamily: 'TonphaiThin',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        ElevatedButton(
                          onPressed: () {
                            InputColumnTwo defaultInputDataTwo =
                                InputColumnTwo(column_card: 4);
                            DataColumCardTwo.count = [defaultInputDataTwo];
                            _columnControllerTwo.clear();
                            InputCardTwo defaultInputDataCardTwo =
                                InputCardTwo(count_card: 12);
                            DataCountCardTwo.countCard = [
                              defaultInputDataCardTwo
                            ];
                            _countControllerTwo.clear();
                            InputColumnThree defaultInputDataThree =
                                InputColumnThree(column_card: 5);
                            DataColumCardThree.count = [defaultInputDataThree];
                            _columnControllerThree.clear();
                            InputCardThree defaultInputDataCardThree =
                                InputCardThree(count_card: 16);
                            DataCountCardThree.countCard = [
                              defaultInputDataCardThree
                            ];
                            _countControllerThree.clear();
                            InputColumnFour defaultInputDataFour =
                                InputColumnFour(column_card: 6);
                            DataColumCardFour.count = [defaultInputDataFour];
                            _columnControllerFour.clear();
                            InputCardFour defaultInputDataCardFour =
                                InputCardFour(count_card: 20);
                            DataCountCardFour.countCard = [
                              defaultInputDataCardFour
                            ];
                            _countControllerFour.clear();
                          },
                          child: Text(
                            'Reset',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: 'TonphaiThin',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10),
                IconButton(
                  padding: EdgeInsets.only(top: 30),
                  icon: Image.asset(
                    'assets/images/arrowBack.png',
                    width: 50,
                    height: 50,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SingleOrMulti()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
