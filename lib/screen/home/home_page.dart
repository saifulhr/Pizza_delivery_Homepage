import 'package:flutter/material.dart';
import 'package:pizza_delivery/screen/data/itemlist_json.dart';
import 'package:pizza_delivery/screen/home/menu_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              color: const Color.fromARGB(129, 10, 112, 202),
              height: 150,
              width: double.infinity,
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Hello, Let\'s Find Delicious Food!',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 20,
          right: 20,
          top: 120,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Search some foods...',
              hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
              prefixIcon: const Icon(Icons.search, color: Colors.black),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 12,
          right: 12,
          top: 160,
          bottom: 0,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 15,
              mainAxisSpacing: 10,
              childAspectRatio: 1.05 / 1.3,
            ),
            itemCount: itemlist.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        itemlist[index]['image']!,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      itemlist[index]['text']!,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        const Positioned(
          bottom: 125,
          child: Padding(padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Text('Recommended',style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
              SizedBox(width: 160,),
              Text('View All',style: TextStyle(color: Color.fromARGB(129, 10, 112, 202),fontSize: 14,fontWeight: FontWeight.bold),)
            ],
          ),
          ),
        ),
        Positioned(
          left: 12,
          right: 12,
          bottom: 25,
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> MenuPage()));
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          child: Image.asset(
                            'assets/images/image06.jpg',
                            height: 90,
                            width: 110,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 17,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Paparian Pizza\'s',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                Image.asset('assets/images/image11.png',height: 15,width: 15,color: Colors.grey,),
                                const SizedBox(width: 5,),
                                const Text('25Km Away',style: TextStyle(color: Colors.grey,fontSize: 12),),
                              ],
                            ),
                            const SizedBox(height: 15,),
                            Row(
                              children: [
                                Image.asset('assets/images/image12.png',height: 14,width: 14,),
                                const SizedBox(width: 5,),
                                const Text('4,9  (302 rating)',style: TextStyle(color: Colors.grey,fontSize: 12),)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
