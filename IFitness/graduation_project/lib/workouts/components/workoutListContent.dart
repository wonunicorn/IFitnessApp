import 'package:graduation_project/workouts/components/listContent.dart';
import 'package:graduation_project/workouts/screens/cardio/cardioScreen.dart';
import 'package:graduation_project/workouts/screens/others/othersWorkoutScreens.dart';
import 'package:graduation_project/workouts/screens/powerTraining/powerTraineeScreens.dart';
import 'package:graduation_project/workouts/screens/stretching/stretchingScreens.dart';

final Set<WorkoutContent> _saved = new Set<WorkoutContent>();

List<WorkoutContent> cardioContent = [
  WorkoutContent(
    number: 1,
    image: 'asset/images/cardio1.png',
    title: 'Killer HIIT CARDIO workout',
    description: 'We will be powering through 6 different body-weighted, high-intensity exercises and we will get through the entire circuit 3 times! This HIIT circuit requires no equipment so you can get that cardio workout in from anywhere.',
    minutes: 13,
    workoutType: 'cardio',
    calorie: 150,
    level: 'beginner',
    exercisesQuantity: 6,
    video: 'asset/videos/cardio1.mp4',
    nextWay: CardioScreen1(),
  ),
  WorkoutContent(
    number: 2,
    image: 'asset/images/cardio2.png',
    title: 'Power CARDIO workout',
    description: 'It\'s cardio time!! Today\'s quick 10 minute power cardio is intense and sweaty! 10 different cardio focused moves to get that heart rate up. No rest in between moves today - but of course listen to your body and do what feels right for you! This makes for a great, quick cardio workout on it\'s own or you could use it as a killer warm up or workout finisher.',
    minutes: 10,
    workoutType: 'cardio',
    calorie: 130,
    level: 'beginner',
    exercisesQuantity: 10,
    video: 'asset/videos/powerTrainingCardio.mp4',
    nextWay: CardioScreen2(),
  ),
  WorkoutContent(
    number: 3,
    image: 'asset/images/cardio3.png',
    title: 'Cardio Kickboxing Workout',
    description: 'This cardio workout is full of kickboxing inspired exercises that will get that heart rate up, help burn fat, improve endurance and will have you seriously sweaty by the end!',
    minutes: 29,
    workoutType: 'cardio',
    calorie: 350,
    level: 'intermediate',
    exercisesQuantity: 30,
    video: 'asset/videos/kickboxing.mp4',
    nextWay: CardioScreen3(),
  ),
];

List<WorkoutContent> powerTrainingContent = [
  WorkoutContent(
    number: 1,
    image: 'asset/images/pt1.png',
    title: 'Abs Workout',
    description: 'Today\'s ab workout is only 11 minutes and requires no equipment but is sure to set that core on fire! Use this ab training on it\'s own for a quick, no repeats workout or add it to any workout as a core finisher. For an extra challenge take shorter rest breaks or no breaks at all.',
    minutes: 11,
    workoutType: 'powerTraining',
    calorie: 150,
    level: 'beginner',
    exercisesQuantity: 20,
    video: 'asset/videos/abs.mp4',
    nextWay: PowerTraineeScreen1(),
  ),
  WorkoutContent(
    number: 2,
    image: 'asset/images/pt2.png',
    title: 'Leg Day STRENGTH Workout ',
    description: 'It\'s leg day!! In today\'s leg day strength workout we are going to lean out those legs with a series of lower body exercises designed to build strength, power and definition by adding resistance. Keep your weights heavy and your movements slow and controlled. We will sneak in a few cardio bursts, obviously, to be sure we are keeping that heart rate up and burning some serious calories! ',
    minutes: 33,
    workoutType: 'powerTraining',
    calorie: 300,
    level: 'intermediate',
    exercisesQuantity: 30,
    video: 'asset/videos/legDay.mp4',
    nextWay: PowerTraineeScreen2(),
  ),

];

List<WorkoutContent> stretchingContent = [
  WorkoutContent(
    number: 1,
    image: 'asset/images/stretch1.png',
    title: 'FULL BODY STRETCH',
    description: 'Slowing it down today with this full body stretch. It\'s important to take recovery days and let the body heal  in between workouts. So find a soft surface, clear some space and get ready to relax into this total body stretching routine.',
    minutes: 11,
    workoutType: 'stretching',
    calorie: 70,
    level: 'beginner',
    exercisesQuantity: 15,
    video: 'asset/videos/stretch1.mp4',
    nextWay: StretchingScreen1(),
  ),
  WorkoutContent(
    number: 2,
    image: 'asset/images/stretch2.png',
    title: 'Quick Daily Stretching Routine',
    description: 'This full body stretching routine is a great way to start your day or end your workout! Stretch out sore muscles, improve flexibility and circulation, gain mobility and de-stress!',
    minutes: 10,
    workoutType: 'stretching',
    calorie: 75,
    level: 'beginner',
    exercisesQuantity: 15,
    video: 'asset/videos/stretch2.mp4',
    nextWay: StretchingScreen2(),
  ),
  WorkoutContent(
    number: 3,
    image: 'asset/images/stretch3.png',
    title: 'Full Body STRETCH',
    description: 'Slowing things down with this full body stretch which is perfect for an active recovery day workout. I\'m guiding you through some full body stretches and yoga inspired movements to have you feeling loose and ready to take on your next workout. Workouts like this one are important to incorporate into your weekly routines to help improve mobility and flexibility.',
    minutes: 14,
    workoutType: 'stretching',
    calorie: 75,
    level: 'beginner',
    exercisesQuantity: 20,
    video: 'asset/videos/stretch3.mp4',
    nextWay: StretchingScreen3(),
  ),
];

List<WorkoutContent> othersWorkoutContent = [
  WorkoutContent(
    number: 1,
    image: 'asset/images/others1.png',
    title: 'FIERCE TABATA Workout',
    description: 'No Equipment needed in today\'s workout as we power through a series of body-weighted TABATA exercises. Short, intense bursts of movement and minimal rest will get that heart rate up and will improve power and endurance. Clear some space and follow along!',
    minutes: 20,
    workoutType: 'othersWorkout',
    calorie: 250,
    level: 'intermediate',
    exercisesQuantity: 40,
    video: 'asset/videos/tabata.mp4',
    nextWay: OthersWorkoutScreen1(),
  ),
  WorkoutContent(
    number: 2,
    image: 'asset/images/others2.png',
    title: 'Full Body HIIT Pilates Workout',
    description: 'Time for another Full Body HIIT Pilates workout! This fusion style workout includes a series of pilates inspired exercises using no equipment to give you a full body workout from home. No Jumping makes this a quiet workout that is apartment friendly and low impact. Grab a mat and follow along!',
    minutes: 30,
    workoutType: 'othersWorkout',
    calorie: 250,
    level: 'intermediate',
    exercisesQuantity: 40,
    video: 'asset/videos/pilates.mp4',
    nextWay: OthersWorkoutScreen2(),
  ),
];