import 'package:flutter/material.dart';
class ViewListingsBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        print('View Listings Button Pressed');
      },
      style: TextButton.styleFrom( 
        backgroundColor: Colors.white
      ),
      child: const Text('View My Listings', style: TextStyle(fontSize: 16, color: Color(0xffA0D44E)),),
    );
  }
}
class DeleteAccBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        print('Delete Account Button Pressed');
      },
      style: TextButton.styleFrom( 
        backgroundColor: Colors.white
      ),
      child: Text('Delete Account', style: TextStyle(fontSize: 16, color: Color(0xffA0D44E)),),
    );
  }
}
class MyHomePage extends StatelessWidget{
  
  const MyHomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text.rich(TextSpan(
              children: <TextSpan>[
                TextSpan(text: 'Trade',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold, color: Colors.black)),
                TextSpan(text: ' ',),
                TextSpan(text: 'Finder',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold, color: Colors.white,))
              ]
            )),
        backgroundColor: const Color(0xffA0D44E),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
        actions: const [Icon(Icons.edit)],
      ),
      
      body: Center(
      child: Column(
      children:[
        Container(
        width: 400,
        height: 50,
        color: const Color(0xffA0D44E),),
        Container(
        height: 644 ,
        width: 350,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2))]),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CircleAvatar(radius: 40,
          backgroundImage: AssetImage('assets/myphoto.jpg'),
          ),
          const Text('Mostafa Mohamed',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
          const SizedBox(
          height: 60,
          width: 250,
          child: Text('Student At IAEMS, Front End Web Developer, Passionate About Programming.',
          style: TextStyle(fontSize: 12, color: Colors.grey,),),
          ),
          
          const SizedBox(
            width: 250,
            height: 40,
            child: Text('PERSONAL', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,),textAlign: TextAlign.left,),
          ),
          const SizedBox(
            width: 250,
            height: 25,
            child: Text.rich(TextSpan(
              children: <TextSpan>[
                TextSpan(text: 'First Name',style: TextStyle(fontSize: 14, color: Colors.grey)),
                TextSpan(text: '        ',),
                TextSpan(text: 'Mostafa',style: TextStyle(fontSize: 14, color: Colors.black,))
              ]
            )),
          ),
          const SizedBox(
            width: 250,
            height: 25,
            child: Text.rich(TextSpan(
              children: <TextSpan>[
                TextSpan(text: 'Last Name',style: TextStyle(fontSize: 14, color: Colors.grey)),
                TextSpan(text: '        '),
                TextSpan(text: 'Mohamed',style: TextStyle(fontSize: 14, color: Colors.black,))
              ]
            )),
          ),
          const SizedBox(
            width: 250,
            height: 25,
            child: Text.rich(TextSpan(
              children: <TextSpan>[
                TextSpan(text: 'Email',style: TextStyle(fontSize: 14, color: Colors.grey)),
                TextSpan(text: '       '),
                TextSpan(text: 'mostafa.hamed1173@gmail.com',style: TextStyle(fontSize: 12, color: Colors.black,))
              ]
            )),
          ),
          const SizedBox(
            width: 250,
            height: 25,
            child: Text.rich(TextSpan(
              children: <TextSpan>[
                TextSpan(text: 'Phone',style: TextStyle(fontSize: 14, color: Colors.grey)),
                TextSpan(text: '                '),
                TextSpan(text: '01001234567',style: TextStyle(fontSize: 14, color: Colors.black,))
              ]
            )),
          ),
          const SizedBox(
            width: 250,
            height: 60,
            child: Text.rich(TextSpan(
              children: <TextSpan>[
                TextSpan(text: 'Second Phone',style: TextStyle(fontSize: 14, color: Colors.grey)),
                TextSpan(text: '  '),
                TextSpan(text: '01123456789',style: TextStyle(fontSize: 14, color: Colors.black,))
              ]
            )),
          ),
          const SizedBox(
            width: 250,
            height: 30,
            child: Text('SUBSCRIPTION', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
          ),
          const SizedBox(
            width: 250,
            height: 25,
            child: Text('You can use a free trial for 3 months. ', style: TextStyle(fontSize: 14),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ViewListingsBtn(),
          DeleteAccBtn(),
        ]
        )
        ],
        )
      )
        ])),
        );
  }
}