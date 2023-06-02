import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(105, 120, 50, 10),
                child: Container(
                  height: 150,
                  width: 150,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 0,
          ),
          const Text(
            'Welcome Back',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'I m New User',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 87, 2, 9),
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 50,
            width: 300,
            child: Form(
              child: TextField(
                textAlign: TextAlign.center,
                cursorHeight: 20,
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Enter Your Email ',
                  labelText: 'Email Id',
                  labelStyle: const TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
          Container(
            height: 50,
            width: 300,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Password()));
              },
              child: const Text(
                'Next',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Password extends StatelessWidget {
  const Password({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
        title: const Text(
          '   ',
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(115, 65, 110, 10),
            child: Container(
              height: 150,
              width: 150,
              child: const CircleAvatar(
                child: Icon(Icons.person),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Enter Atleast 8 Characters'),
          const SizedBox(
            height: 10,
          ),
          Form(
            child: Container(
              height: 50,
              width: 300,
              child: TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                cursorHeight: 20,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: 'Enter Your Paasword ',
                  labelText: 'Password',
                  labelStyle: const TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Forget Password    ',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 40,
            width: 260,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const FirstPage()));
              },
              child: const Text('LogIn'),
            ),
          ),
        ],
      ),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  get children => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Winnings'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 200,
                width: 300,
                color: Colors.blueAccent,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 35,
                        ),
                        Divider(
                          height: 10,
                          color: Colors.blueAccent,
                        ),
                        Text(
                          ' SATHEESH S',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            fontSize: 17.0,
                          ),
                        ),
                        Text(
                          ' mrsatheesh2705@gmail.com',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    )),
              ),
              const ListTile(
                leading: Icon(Icons.accessibility_new),
                title: Text('Victory'),
              ),
              const ListTile(
                leading: Icon(Icons.more_sharp),
                title: Text('loose'),
              ),
              const Divider(height: 2),
              ListTile(
                leading: Icon(Icons.star_border),
                title: const Text('Star'),
                trailing: Container(
                  child: const Text('38'),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.alarm),
                title: Text('Sheduled'),
              ),
              ListTile(
                leading: Icon(Icons.play_arrow),
                title: const Text('Important'),
                trailing: Container(
                  child: Text('99'),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text('Setting'),
              ),
              const ListTile(
                leading: Icon(Icons.info_outline),
                title: Text('Help & FeedBack'),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              ListTile(
                  leading: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTw0LsM-1XOemnqpw4YrBk1eJXfnnPuX3wOSA&usqp=CAU "),
                  title: TextButton(
                    onPressed: () {},
                    child: const Text('IPL Voting'),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
