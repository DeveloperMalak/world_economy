import 'package:flutter/material.dart';
import 'package:world_economy/ApisHandling/api_repo.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Countries Info'),),
      body: Column(
        children: [
          FutureBuilder(future: ApiRepo.getAllCountriesData(), 
          builder: (BuildContext context, snapshot){
            if(snapshot.connectionState!=ConnectionState.waiting){
              return  Expanded(
                child: ListView.builder(
                  itemCount: ApiRepo.data[1].length,
                  itemBuilder: (BuildContext context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Column(
                        children: [
                          Text(ApiRepo.data[1][index]['id'].toString()),
                          Text(ApiRepo.data[1][index]['name']),
                          Text(ApiRepo.data[1][index]['iso2Code'].toString()),
                          Text(ApiRepo.data[1][index]['incomeLevel']['value'])
                          ],),
                          
                    ),
                  );
                }),
              );
            }else{
              return Center(child: CircularProgressIndicator(),);
            }
            
          }),
        ],
      ),
    );
  }
}