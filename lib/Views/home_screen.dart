import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:practice2/Utils/route_names.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<ScreenModel> screensList = [];

  var selectedValue;
  late String selectedRoute;

  void populateScreenList() {
    screensList.clear();
    screensList.add(ScreenModel(id: 1, screenName: 'Screen 1'));
    screensList.add(ScreenModel(id: 2, screenName: 'Pincode Screen'));
    screensList.add(ScreenModel(id: 3, screenName: 'Animated Text Screen'));
    screensList.add(ScreenModel(id: 4, screenName: 'Calculator Screen'));
  }

  @override
  Widget build(BuildContext context) {
    populateScreenList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HomeScreen',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DropdownButton(
                value: selectedValue,
                hint: Text('Select the Screen'),
                items: screensList.map((e) {
                  return DropdownMenuItem(
                    value: e.id.toString(),
                    child: Text(e.screenName.toString()),
                  );
                }).toList(),
                onChanged: (value) {
                  selectedValue = value;
                  setState(() {});
                },
                // items: [
                //   DropdownMenuItem(
                //     value: screensList[],
                //       child: Text('data')
                //   )
                // ],
              ),
              InkWell(
                onTap: () {
                  if (selectedValue == null) {
                    // Fluttertoast.showToast(msg: 'Please select any screen.');
                    print('Please Select any Screen');
                  } else {
                    switch (selectedValue) {
                      case '1':
                        selectedRoute = RouteName.screen1;
                        break;
                      case '2':
                        selectedRoute = RouteName.pincodeScreen;
                        break;
                      case '3':
                        selectedRoute = RouteName.animatedTextScreen;
                        break;
                      case '4':
                        selectedRoute = RouteName.calculatorScreen;
                        break;
                    }
                    Navigator.pushNamed(context, selectedRoute,
                        arguments: {
                          'name' : 'Hamza Iqbal',
                          'age' : 25
                        }
                    );
                  }
                },
                child: Container(
                  margin: EdgeInsets.all(20),
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    'Go to Selected Screen',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ScreenModel {
  final int id;
  final String screenName;

  ScreenModel({required this.id, required this.screenName});
}
