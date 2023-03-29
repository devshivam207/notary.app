import 'package:flutter/material.dart';
import 'package:stocklive/controller/controller.dart';
import 'package:stocklive/models/model.dart';

class MyFirstPage extends StatefulWidget {
  MyFirstPage({super.key});

  @override
  State<MyFirstPage> createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  late Future<Welcome> futurecompanieslist;

  void initState() {
    futurecompanieslist = MyController().getdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: futurecompanieslist,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            List<CompaniesList> companies =
                snapshot.data!.data.companiesList.toList();
            return Scaffold(
                body: Container(
              margin: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Text(
                    "Companies List",
                    textScaleFactor: 2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text("${companies.length} companies Found"),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onChanged: (value) {
                      setState(() {
                        companies = companies
                            .where((element) => element.name.contains(value))
                            .toList();
                      });
                    },
                    decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.search),
                        fillColor: Colors.blue,
                        hintText: "Search",
                        labelText: "Search",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50)))),
                  ),
                  Container(
                    child: Expanded(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: companies.length,
                          itemBuilder: ((context, index) {
                            return Container(
                              height: 70,
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 3,
                                  )),
                              child: Text(
                                "  ${index + 1} :  ${companies[index].name}",
                                style: TextStyle(color: Colors.black),
                              ),
                            );
                          })),
                    ),
                  )
                ],
              ),
            ));
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
        }
        return Scaffold(
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircularProgressIndicator(
                color: Colors.black,
              ),
              SizedBox(
                height: 20,
              ),
              Text("Please wait Loading takes time...")
            ],
          )),
        );
      },
    );
  }
}
