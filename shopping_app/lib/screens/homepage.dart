import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "YSL",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/profil');
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/avatar.jpeg'),
                        radius: 45,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Serap Güneş',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  menuitem(
                    title: "AnaSayfa",
                    icon: Icon(Icons.home),
                    onTap: () {
                      Navigator.pushNamed(context, "/home");
                    },
                  ),
                  menuitem(
                    title: "Hakkımızda",
                    icon: Icon(Icons.info_outline),
                    onTap: () {
                      Navigator.pushNamed(context, "/about");
                    },
                  ),
                  menuitem(
                    title: "Kıyafetler",
                    icon: Icon(Icons.checkroom),
                    onTap: () {
                      Navigator.pushNamed(context, "/clothes");
                    },
                  ),
                  menuitem(
                    title: "Çantalar",
                    icon: Icon(Icons.local_mall),
                    onTap: () {
                      Navigator.pushNamed(context, "/bag");
                    },
                  ),
                  menuitem(
                    title: "Sepetim",
                    icon: Icon(Icons.shopping_cart),
                    onTap: () {
                      Navigator.pushNamed(context, "/shop");
                    },
                  ),
                ],
              ),
            ),
            Divider(),
            menuitem(
              icon: Icon(Icons.logout_outlined),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/welcome', (route) => false);
              },
              title: "Çıkış",
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
       body: 
       Column(
          children: [
            Expanded(
              child: Container(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        searchbox(),
                        Center(
              child: Container(
                height: 200,
                child: Image.asset(
                  'assets/images/logo2.png',
                ),
              ),
            ),
                        Divider(),
                        look(),
                        look2(),
                        look3(),
                        look4(),
                        look5(),
                        
                      ],
                    ),
                  )),
            ),
          
          ],
        ),
      );
  }

  Widget look2() => Container(
          child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                item("assets/images/görünüm1.jpg"),
               item("assets/images/görünüm1.jpg"),
                item("assets/images/görünüm1.jpg"),
                
              ],
            ),
          ),
        ],
      ));
       Widget look4() => Container(
          child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                
               item("assets/images/görünüm8.jpg"),
                item("assets/images/görünüm9.jpg"),
                
              ],
            ),
          ),
        ],
      ));
      Widget look5() => Container(
          child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                item("assets/images/görünüm7.jpg"),
               item("assets/images/görünüm11.jpg"),
                item("assets/images/görünüm10.jpg"),
                
              ],
            ),
          ),
        ],
      ));


  Widget look3() => Container(
          child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                item("assets/images/görünüm4.jpg"),
               item("assets/images/görünüm5.jpg"),
                item("assets/images/görünüm6.jpg"),
                
                        
              ],
            ),
          ),
        ],
      ));

  Widget look() => Container(
          child: Column(
        children: [
          titleitem("Görünümler", "View all"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                item("assets/images/görünüm3.jpg"),  
                item("assets/images/görünüm2.jpg"),
                
                          
              ],
            ),
          ),
        ],
      ));

  Widget item(String photo) =>Container(
        width: 500,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Color.fromARGB(25, 170, 170, 170),
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14), 
                child: Image.asset(
                  photo,
                  
                ),
              ),
          
        ]),
      );

  
  Widget searchbox() => Container(
      height: 50,
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Color.fromARGB(25, 170, 170, 170),
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.search, size: 17, color: Colors.grey),
              SizedBox(
                width: 10,
              ),
              Text(
                "Aramak istediğiniz ürünü giriniz",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Icon(Icons.tune_outlined,
              size: 17, color: Colors.black),
        ],
      ));

  
  Padding titleitem(String title, String link) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            link,
            style: TextStyle(
              color: Color.fromARGB(255, 153, 153, 153),
              fontSize: 10,
              //fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class menuitem extends StatelessWidget {

   final Function()? onTap;
   final String title;
   final Icon icon;

  const menuitem({
    super.key, required this.title, required this.icon, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            icon,
            SizedBox(width: 6,),
            Text(title),
          ],
        ),
      ),
    );
  }
}
