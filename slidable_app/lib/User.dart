class User{
  String? name;
  String? email;
  String? photo;

User({this.name, this.email, this.photo});
}

class allUser {
  static final users = <User>[

  User(name: 'Acacia', 
  email: 'aaaaa@gmail.com', 
  photo: 'https://static-images.vnncdn.net/files/publish/2022/9/3/bien-vo-cuc-thai-binh-340.jpg'
  ),
  User(name: 'Calliope', 
  email: 'aaaaa@gmail.com', 
  photo: 'https://hinhanhdephd.com/wp-content/uploads/2015/12/hinh-anh-dep-girl-xinh-hinh-nen-dep-gai-xinh.jpg'
  ),
  User(name: 'Erina', 
  email: 'aaaaa@gmail.com', 
  photo: 'https://noithatbinhminh.com.vn/wp-content/uploads/2022/08/anh-dep-4k-01.jpg'
  ),
  User(name: 'Iowa', 
  email: 'aaaaa@gmail.com', 
  photo: 'https://thuthuatnhanh.com/wp-content/uploads/2021/11/Anh-chan-dung-em-va-nang.jpg'
  ),
];
}