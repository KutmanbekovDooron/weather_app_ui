import 'package:flutter/material.dart';
import 'package:weather_design/widgets/app_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: GetStarted(),
    );
  }
}

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return AppScaffold(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: const AssetImage("assets/img.png"),
                height: size.height * .4,
                width: size.width * .4,
              ),
              SizedBox(
                child: Column(
                  children: [
                    Text(
                      "Weather",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text("ForeCasts",
                        style:
                            Theme.of(context).textTheme.displayMedium!.copyWith(
                                  color: const Color(0xffDDB130),
                                )),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: const Color(0xffDDB130),
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 40)),
                child: Text(
                  "Get Start",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
