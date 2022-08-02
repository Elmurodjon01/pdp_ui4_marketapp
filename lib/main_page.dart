import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdp_ui4_marketapp/reusables.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}


class _MainPageState extends State<MainPage> {
  ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text('Cars', style: TextStyle(fontSize: 22, color: Colors.red),),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_none, color: Colors.red,),),
          IconButton(onPressed: (){}, icon: const Icon(Icons.local_grocery_store, color: Colors.red,),)
        ], systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //Categories in a row
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SingleTab(true, 'All'),
                    SingleTab(false, 'red'),
                    SingleTab(false, 'blue'),
                    SingleTab(false, 'pink'),
                    SingleTab(false, 'green'),
                    SingleTab(false, 'yellow'),
                  ],
                ),
              ),
              //Car items in a card
              const SizedBox(height: 20.0,),
              InformativeBox(
                img: 'https://images.unsplash.com/photo-1629421889558-e2315ffc869d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
                model: 'Genesis Coupe',
                price: '29,900\$',
                type: 'Gasoline',
              ),
              InformativeBox(
                img: 'https://i.ytimg.com/vi/2ua5xioxaQU/maxresdefault.jpg',
                model: 'KIA K5',
                price: '23,790\$',
                type: 'Gas',
              ),
              InformativeBox(
                img: 'https://sharazicars.pk/wp-content/uploads/2020/11/2020-Hyundai-Sonata-1.jpg',
                model: 'IONIQ 5',
                price: '50,001,750\$',
                type: 'Electric',
              ),

              InformativeBox(
                img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCqj7xK_8K3_poEeRsEv_5JrFExnCvkGmMGw&usqp=CAU',
                model: 'Genesis Coupe',
                price: '29,900\$',
                type: 'Gasoline',
              ),
              InformativeBox(
                img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1PE7GjtcetV-wg-6Fev40CXsLZh4sRk9KfA&usqp=CAU',
                model: 'Genesis Coupe',
                price: '29,900\$',
                type: 'Gasoline',
              ),
            ],
          ),
        ),
      ),
    );
  }


}
