class UserModel {
   UserModel(
      {required this.name,
      required this.time,
      required this.image,
      required this.lastMessage}
      );

  final String name;
  final String lastMessage;
  final String image;
  final String time;

}



  List<UserModel> usersApp = [
    UserModel(
        name: 'Yourself',
        image: 'assets/flowers.jpg',
        lastMessage: 'Good Job',
        time: '12:00PM'),
    UserModel(
        name: 'Shrouk Samir',
        image: 'assets/shrouk.jpg',
        lastMessage: 'Good Night',
        time: '00:19AM'),
    UserModel(
        name: 'Radwa Elsaygh',
        image: 'assets/radwa.jpg',
        lastMessage: 'Stay Strong',
        time: '10:00AM'),
    UserModel(
        name: 'Ganna Elamin',
        image: 'assets/ganna.jpg',
        lastMessage: 'Bye Bye',
        time: '12:00PM'),
    UserModel(
        name: 'Shahd Ahmed',
        image: 'assets/shahd.jpg',
        lastMessage: 'hello ,bestie',
        time: '17:00PM'),
    UserModel(
        name: 'Khadeja',
        image: 'assets/khadeja.jpg',
        lastMessage: 'Swear!!!',
        time: '10:00PM'),
  ];