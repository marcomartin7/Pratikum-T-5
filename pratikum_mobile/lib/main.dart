import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  get children => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'assets/bg.png',
                  height: 300,
                  width: 300,
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Column(
                children: [
                  TextField(
                    autofocus: false,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      labelText: 'Nama Pengguna',
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    autofocus: false,
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      labelText: 'Kata Sandi',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                FloatingActionButton.extended(
                  backgroundColor: const Color(0xff5677FF),
                  foregroundColor: Colors.black,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return dashboard();
                    }));
                  },
                  label: Text(
                    '                           Masuk                           ',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Belum Punya Akun? ',
                      style: TextStyle(fontSize: 13),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Daftar',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff5677FF),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                top: 10,
                left: 15,
                right: 15,
                bottom: 10,
              ),
              decoration: BoxDecoration(
                  color: Color(0xff5677FF),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  )),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search, color: Colors.white),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return profile();
                          }));
                        },
                        icon: Icon(
                          Icons.account_circle,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/3 card.png',
                        height: 170,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [Text('List E-Wallet')],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 30),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/gopay.png',
                        height: 100,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Isi Saldo')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/ovo.png',
                        height: 50,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Isi Saldo')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/linkaja.png',
                        height: 70,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Gopay')
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5677FF),
      appBar: AppBar(
        title: Text('Profile Saya'),
        backgroundColor: Color(0xff5677FF),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          SizedBox(height: 20),
          Column(
            children: [
              Image.asset(
                'assets/marco.jpng',
                width: 140,
                height: 140,
              ),
              SizedBox(height: 10),
              Text(
                'Marco Martin Da Silva',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                  left: 15,
                  right: 15,
                ),
                margin:
                    EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('No.Rek',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            )),
                        SizedBox(width: 145),
                        Text(
                          '189853556234',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 8),
                        // Icon(
                        //   Icons.copy,
                        //   size: 16,
                        //   color: Colors.black,
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(
                      height: 15,
                      thickness: 3,
                      indent: 0,
                      endIndent: 0,
                      color: Colors.black,
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text('No.Telepon',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            )),
                        SizedBox(width: 115),
                        Text(
                          '087788452608',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 15,
                      thickness: 3,
                      indent: 0,
                      endIndent: 0,
                      color: Colors.black,
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          'Tanggal Lahir',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 130),
                        Text(
                          '12 Maret 2001',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 15,
                      thickness: 3,
                      indent: 0,
                      endIndent: 0,
                      color: Colors.black,
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          'Saldo Anda',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 150),
                        Text(
                          'Rp.199.000',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nama Lengkap',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Marco Martin Da Silva',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 14,
                thickness: 2,
                indent: 20,
                endIndent: 20,
                color: Colors.white,
              ),
              SizedBox(height: 3),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'marcomartin1233@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 14,
                thickness: 2,
                indent: 20,
                endIndent: 20,
                color: Colors.white,
              ),
              SizedBox(height: 3),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Alamat Rumah',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Perumahan Tatya Asri Block JC 15 RT 01/RW 12 ',
                      // maxLines: 2,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        // overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 10,
                thickness: 2,
                indent: 20,
                endIndent: 20,
                color: Colors.white,
              ),
            ],
          ),
        ],
      )),
    );
  }
}