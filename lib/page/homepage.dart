import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Package"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child:const  Text("str_packages" , style:  TextStyle(color: Colors.white, fontSize: 20),).tr(), ),
                ],
              ),
            ),
            Row(
              children: [
                const SizedBox(width: 5,),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      EasyLocalization.of(context)!.setLocale(const Locale('en', 'US'));
                    },
                    color: Colors.yellowAccent,
                    child: const Text("English"),
                  ),
                ),
                const SizedBox(width: 5,),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      EasyLocalization.of(context)!.setLocale(const Locale('ko', 'KR'));
                    },
                    color: Colors.deepOrangeAccent,
                    child: const Text("Japanese"),
                  ),
                ),
                const SizedBox(width: 5,),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      EasyLocalization.of(context)!.setLocale(const Locale('ja', 'JP'));
                    },
                    color: Colors.orange,
                    child: const Text("Korean"),
                  ),
                ),
                const SizedBox(width: 5,),
              ],
            )
          ],
        ),
      ),
    );
  }
}