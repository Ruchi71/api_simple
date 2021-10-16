import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MaterialApp(home: ProviderUser(),debugShowCheckedModeBanner: false,));

/*class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Map mapResponse;
  List listOfFacts;

  Future fetchData() async {
    http.Response response;
    response = await http.get(Uri.parse('https://thegrowingdeveloper.org/apiview?id=2'));

    if(response.statusCode==200) {
      setState(() {
        mapResponse = json.decode(response.body);
        listOfFacts = mapResponse['facts'];

      });

    }
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetch Data From Internate'),
      ),
      body: mapResponse == null
          ? Container()
          : SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              mapResponse['category'].toString(),
              style: TextStyle(fontSize: 30),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Image.network(listOfFacts[index]['image_url']),
                      Text(
                        listOfFacts[index]['title'].toString(),
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        listOfFacts[index]['description'].toString(),
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                );
              },
              itemCount: listOfFacts == null ? 0 : listOfFacts.length,
            )
          ],
        ),
      ),
    );
  }
}*/
/*class UserList extends StatelessWidget{

  final String apiUrl = "https://randomuser.me/api/?results=10";

  Future<List<dynamic>> fetchUsers() async {

    var result = await http.get(Uri.parse(apiUrl));
    return json.decode(result.body)['results'];

  }

  String _name(dynamic user){
    return user['name']['title'] + " " + user['name']['first'] + " " +  user['name']['last'];

  }

  String _location(dynamic user){
    return user['location']['country'];
  }

  String _age(Map<dynamic, dynamic> user){
    return "Age: " + user['dob']['age'].toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: Container(
        child: FutureBuilder<List<dynamic>>(
          future: fetchUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if(snapshot.hasData){
              print(_age(snapshot.data[0]));
              return ListView.builder(
                  padding: EdgeInsets.all(8),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index){
                    return
                      Card(
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              leading: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(snapshot.data[index]['picture']['large'])),
                              title: Text(_name(snapshot.data[index])),
                              subtitle: Text(_location(snapshot.data[index])),
                              trailing: Text(_age(snapshot.data[index])),
                            )
                          ],
                        ),
                      );
                  });
            }else {
              return Center(child: CircularProgressIndicator());
            }
          },


        ),
      ),
    );
  }

}*/

/*class ProviderUser extends StatefulWidget {
  const ProviderUser({Key key}) : super(key: key);

  @override
  _ProviderUserState createState() => _ProviderUserState();
}

class _ProviderUserState extends State<ProviderUser> {

  final String apiUrl = "";

  Future<List<dynamic>> fetchUsers() async {

    var result = await http.get(Uri.parse(apiUrl));
    return json.decode(result.body);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: Container(
        child: FutureBuilder<List<dynamic>>(
          future: fetchUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if(snapshot.hasData){
              return ListView.builder(
                  padding: EdgeInsets.all(8),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index){
                    return
                      Card(
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              title: Text(snapshot.data[index]['id']),
                              subtitle: Text(snapshot.data[index]['type']),
                            )
                          ],
                        ),
                      );
                  });
            }else {
              return Center(child: CircularProgressIndicator());
            }
          },


        ),
      ),
    );
  }
}*/

class ProviderUser extends StatefulWidget {
  const ProviderUser({Key key}) : super(key: key);

  @override
  _ProviderUserState createState() => _ProviderUserState();
}

class _ProviderUserState extends State<ProviderUser> {

  final String apiUrl = "";

  Future fetchUsers() async {

    var result = await http.get(Uri.parse(apiUrl));
    return json.decode(result.body);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: Container(
        child: FutureBuilder<List<dynamic>>(
          future: fetchUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if(snapshot.hasData){
              return ListView.builder(
                  padding: EdgeInsets.all(8),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index){
                    return
                      Card(
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              title: Text(snapshot.data['']),
                              subtitle: Text(snapshot.data[index]['type']),
                            )
                          ],
                        ),
                      );
                  });
            }else {
              return Center(child: CircularProgressIndicator());
            }
          },


        ),
      ),
    );
  }
}

