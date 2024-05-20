import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:match_word/setting/Setting.dart';
import 'package:match_word/single/Level.dart';

class SinglePlayerSetting extends StatefulWidget {
  SinglePlayerSetting({Key? key}) : super(key: key);

  @override
  _SinglePlayerSetting createState() => _SinglePlayerSetting();
}

class DataColumCardEasy {
  static List<InputColumnEasy> count = [InputColumnEasy(column_card: 4)];
}

class DataCountCardEasy {
  static List<InputCardEasy> countCard = [InputCardEasy(count_card: 12)];
}

class DataColumCardMedium {
  static List<InputColumnMedium> count = [InputColumnMedium(column_card: 6)];
}

class DataCountCardMedium {
  static List<InputCardMedium> countCard = [InputCardMedium(count_card: 16)];
}

class DataColumCardHard {
  static List<InputColumnHard> count = [InputColumnHard(column_card: 6)];
}

class DataCountCardHard {
  static List<InputCardHard> countCard = [InputCardHard(count_card: 20)];
}

class _SinglePlayerSetting extends State<SinglePlayerSetting> {
  TextEditingController _countControllerEasy = TextEditingController();
  TextEditingController _countControllerMedium = TextEditingController();
  TextEditingController _countControllerHard = TextEditingController();
  int _selectedColumnCardEasy = 4;
  int _selectedColumnCardMedium = 6;
  int _selectedColumnCardHard = 6;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Setting",
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
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("Easy Mode Setting",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontFamily: 'TonphaiThin',
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              blurRadius: 60,
                              color: Colors.black,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
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
                              Text(
                                "Columns",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontFamily: 'TonphaiThin',
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      blurRadius: 60,
                                      color: Colors.black,
                                      offset: Offset(0, 0),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: DropdownButtonFormField<int>(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                  value: _selectedColumnCardEasy,
                                  items: [4, 6, 8, 10].map((int value) {
                                    return DropdownMenuItem<int>(
                                      value: value,
                                      child: Text(
                                        '$value Columns',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (int? value) {
                                    setState(() {
                                      _selectedColumnCardEasy = value!;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Card",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontFamily: 'TonphaiThin',
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      blurRadius: 60,
                                      color: Colors.black,
                                      offset: Offset(0, 0),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: TextField(
                                  controller: _countControllerEasy,
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
                    Text("Medium Mode Setting",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontFamily: 'TonphaiThin',
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              blurRadius: 60,
                              color: Colors.black,
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
                              Text(
                                "Columns",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontFamily: 'TonphaiThin',
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      blurRadius: 60,
                                      color: Colors.black,
                                      offset: Offset(0, 0),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: DropdownButtonFormField<int>(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                  value: _selectedColumnCardMedium,
                                  items: [4, 6, 8, 10].map((int value) {
                                    return DropdownMenuItem<int>(
                                      value: value,
                                      child: Text(
                                        '$value Columns',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (int? value) {
                                    setState(() {
                                      _selectedColumnCardMedium = value!;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Cards",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontFamily: 'TonphaiThin',
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      blurRadius: 60,
                                      color: Colors.black,
                                      offset: Offset(0, 0),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: TextField(
                                  controller: _countControllerMedium,
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
                    Text("Hard Mode Setting",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontFamily: 'TonphaiThin',
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              blurRadius: 60,
                              color: Colors.black,
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
                              Text(
                                "Columns",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontFamily: 'TonphaiThin',
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      blurRadius: 60,
                                      color: Colors.black,
                                      offset: Offset(0, 0),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: DropdownButtonFormField<int>(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                  value: _selectedColumnCardHard,
                                  items: [4, 6, 8, 10].map((int value) {
                                    return DropdownMenuItem<int>(
                                      value: value,
                                      child: Text(
                                        '$value Columns',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (int? value) {
                                    setState(() {
                                      _selectedColumnCardHard = value!;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Cards",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontFamily: 'TonphaiThin',
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      blurRadius: 60,
                                      color: Colors.black,
                                      offset: Offset(0, 0),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: TextField(
                                  controller: _countControllerHard,
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
                            String columnTextEasy = _selectedColumnCardEasy.toString();
                            String countTextEasy =
                            _countControllerEasy.text.isNotEmpty
                                ? _countControllerEasy.text
                                : "12";
                            String columnTextMedium = _selectedColumnCardMedium.toString();
                            String countTextMedium =
                            _countControllerMedium.text.isNotEmpty
                                ? _countControllerMedium.text
                                : "16";
                            String columnTextHard = _selectedColumnCardHard.toString();
                            String countTextHard =
                            _countControllerHard.text.isNotEmpty
                                ? _countControllerHard.text
                                : "20";

                            int countCardEasy = int.parse(countTextEasy);
                            int countCardMedium = int.parse(countTextMedium);
                            int countCardHard = int.parse(countTextHard);
                            if (countCardEasy % 2 == 0 &&
                                countCardMedium % 2 == 0 &&
                                countCardHard % 2 == 0 &&
                                countCardEasy <= 40 &&
                                countCardMedium <= 40 &&
                                countCardHard <= 40) {
                              InputCardEasy inputDataCardEasy =
                              InputCardEasy(count_card: countCardEasy);
                              DataCountCardEasy.countCard = [inputDataCardEasy];
                              InputCardMedium inputDataCardMedium =
                              InputCardMedium(count_card: countCardMedium);
                              DataCountCardMedium.countCard = [
                                inputDataCardMedium
                              ];
                              InputCardHard inputDataCardHard =
                              InputCardHard(count_card: countCardHard);
                              DataCountCardHard.countCard = [inputDataCardHard];
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => Level()),
                              );
                            } else {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    ),
                                      child: Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/hamster_coffee.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                          ),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Text(
                                                "Warning",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 40.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                "Please enter only even numbers or not more than 40",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16.0,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                              SizedBox(height: 0),
                                              ElevatedButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  primary: Color(0xFFE4F8BA),
                                                  onPrimary: Colors.black,
                                                  shape: CircleBorder(),
                                                  padding: EdgeInsets.all(10.0),
                                                  minimumSize: Size(16, 16),
                                                ),
                                                child: Text(
                                                  'OK',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20.0,
                                                    fontFamily: 'TonphaiThin',
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        ),
                                  );
                                },
                              );
                            }
                            InputColumnEasy inputDataEasy = InputColumnEasy(
                                column_card: int.parse(columnTextEasy));
                            DataColumCardEasy.count = [inputDataEasy];
                            InputColumnMedium inputDataMedium = InputColumnMedium(
                                column_card: int.parse(columnTextMedium));
                            DataColumCardMedium.count = [inputDataMedium];
                            InputColumnHard inputDataHard = InputColumnHard(
                                column_card: int.parse(columnTextHard));
                            DataColumCardHard.count = [inputDataHard];
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
                            InputColumnEasy defaultInputDataEasy = InputColumnEasy(column_card: _selectedColumnCardEasy);
                            DataColumCardEasy.count = [defaultInputDataEasy];
                            InputCardEasy defaultInputDataCardEasy =
                            InputCardEasy(count_card: 12);
                            DataCountCardEasy.countCard = [
                              defaultInputDataCardEasy
                            ];
                            _countControllerEasy.clear();
                            InputColumnMedium defaultInputDataMedium =
                            InputColumnMedium(column_card: _selectedColumnCardMedium);
                            DataColumCardMedium.count = [defaultInputDataMedium];
                            InputCardMedium defaultInputDataCardMedium =
                            InputCardMedium(count_card: 16);
                            DataCountCardMedium.countCard = [
                              defaultInputDataCardMedium
                            ];
                            _countControllerMedium.clear();
                            InputColumnHard defaultInputDataHard =
                            InputColumnHard(column_card: _selectedColumnCardHard);
                            DataColumCardHard.count = [defaultInputDataHard];
                            InputCardHard defaultInputDataCardHard =
                            InputCardHard(count_card: 20);
                            DataCountCardHard.countCard = [
                              defaultInputDataCardHard
                            ];
                            _countControllerHard.clear();
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
                      MaterialPageRoute(builder: (context) => Level()),
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
