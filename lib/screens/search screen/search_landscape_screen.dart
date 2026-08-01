import 'package:flutter/material.dart';
import 'package:project_review/Constant/colors_class.dart';
import 'package:project_review/Constant/style_class.dart';

class SearchLandscapeScreen extends StatelessWidget {
  const SearchLandscapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    
    TextEditingController searchController=TextEditingController();



    List<String>lastSearches=[
      'electronics',
      'pants',
      'three second',
      'long shirt'
    ];

    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SafeArea(
            child: Column(
              spacing: 20,
              mainAxisAlignment: .spaceAround,
              children: [
                Row(
                  spacing: 10,
                  // mainAxisAlignment: .spaceAround,
                  children: [
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Icon(Icons.arrow_back))),
        
                    Expanded(
                      flex: 9,
                      child: TextField(
                        controller: searchController,
                        decoration: InputDecoration(
                          
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          prefixIcon: Icon(Icons.search,size: 40,)
                        ),
                      ),
                    )
                  ]
                ),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  
                  children: [
                    Text('Last Search',style: StyleClass.subTitle,),
                    Text('Clear All',style: TextStyle(color: ColorsClass.primaryColor),)
                  ],
                ),
        
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: lastSearches.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,crossAxisSpacing: 10,mainAxisSpacing: 10,childAspectRatio: 3),
                   itemBuilder: (context,index)=>
                   Container(
                  
                  // height: height/12,
                  // width: width/3,
                  decoration: BoxDecoration(
                    border: Border.all(color:  Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    mainAxisAlignment: .spaceAround,
                    children: [
                      Text(lastSearches[index],style: TextStyle(color: Colors.grey.shade400),),
                      Icon(Icons.clear,color: Colors.grey.shade400,)
                    ],
                  ),
                  
                ),
                   ),
        
        
                
                Row(
                  mainAxisAlignment: .start,
                  children: [
                    SizedBox(height: 50,),
                    Text('Popular Search',style: StyleClass.subTitle),
                  ],
                )
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}