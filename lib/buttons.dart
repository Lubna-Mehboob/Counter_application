import 'package:calculator_project/common_widgets/button_widget.dart';
import 'package:flutter/material.dart';

class ButtonsClass extends StatefulWidget {
  const ButtonsClass({super.key});

  @override
  State<ButtonsClass> createState() => _ButtonsClassState();
}

class _ButtonsClassState extends State<ButtonsClass> {
  int counterVariable = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: const Text('Counter App Assignment'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 215, 204, 235),
      ),
      body: Center(
        child: Container(
          //Container
          height: 400,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
          ),
          margin: const EdgeInsets.all(
              20), // Consistent margin around the container
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Simple Text Variable to show increment or Decrement
                Text(
                  '$counterVariable',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                //Custom Button 1----------------------
                CustomButton(
                  btnName: 'Add',
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  btncolor: Colors.green,
                  textStyle: const TextStyle(color: Colors.white),
                  callBack: () {
                    setState(() {
                      counterVariable++;
                    });
                  },
                ),
                const SizedBox(height: 10),
                //Custom Button 2-----------------------
                CustomButton(
                  btnName: 'Sub',
                  icon: const Icon(
                    Icons.minimize,
                    color: Colors.white,
                  ),
                  btncolor: Colors.red,
                  textStyle: const TextStyle(color: Colors.white),
                  callBack: () {
                    setState(() {
                      if (counterVariable > 0) {
                        counterVariable--;
                      } else {
                        counterVariable = 0;
                      }
                    });
                  },
                ),
                const SizedBox(height: 10),
                //Custom Button 3---------------
                CustomButton(
                  btnName: 'Refresh',
                  icon: const Icon(
                    Icons.refresh,
                    color: Colors.white,
                  ),
                  btncolor: Colors.blue,
                  textStyle: const TextStyle(color: Colors.white),
                  callBack: () {
                    setState(() {
                      counterVariable = 0;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
