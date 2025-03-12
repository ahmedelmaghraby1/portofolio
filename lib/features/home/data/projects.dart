import 'package:portofolio/core/constants/images.dart';
import 'package:portofolio/features/home/domain/entities/project_entity.dart';

List<ProjectEntity> projects = [
  ProjectEntity(
    name: 'Task bite',
    description:
        "Taskbite - Your Ultimate Task Manager.\n Taskbite is a powerful yet simple task management app designed to boost your productivity. With its intuitive interface and smart features, organizing your tasks has never been easier.",
    icon: ImageConstants.task,
    mainFeatures: [
      "✅ Effortless Task Management: Add tasks with a title and detailed content, either by typing manually or using the built-in speech-to-text feature for hands-free input.",
      "✅ Smart Task Flow:\nNew tasks are added to the New Tasks section.\nStart a task with a single tap, and it moves to the Binding section.\nMark a task as complete, and it seamlessly transitions to the Completed section.",
      "✅ Flexible Editing: Easily edit task details or delete tasks whenever needed.",
      "✅ Multilingual Support: Use the app in Arabic or English for a comfortable experience.",
    ],
    images: [
      ImageConstants.task1,
      ImageConstants.task2,
      ImageConstants.task3,
      ImageConstants.task4,
      ImageConstants.task5,
      ImageConstants.task6,
      ImageConstants.task7,
      ImageConstants.task8,
      ImageConstants.task9,
      ImageConstants.task10,
    ],
  ),
  ProjectEntity(
    name: 'Newzly',
    description:
        "Newzly is your go-to news app that keeps you informed with the latest headlines and breaking news from around the world. With its sleek design and powerful features, staying updated has never been easier.",
    icon: ImageConstants.newzly,
    mainFeatures: [
      "📰 Latest News Feeds: Get real-time updates from trusted sources via API integration.",
      "📋 Seamless Pagination: Enjoy a smooth browsing experience with efficient pagination, ensuring you can explore more content without interruptions.",
      "🌗 Dark & Light Mode: Switch between dark and light themes to match your reading preference and enhance your comfort.",
      "🌍 Bilingual Support: Access the app in both Arabic and English for a personalized experience.",
    ],
    images: [
      ImageConstants.newzly,
      ImageConstants.newzly2,
      ImageConstants.newzly3,
      ImageConstants.newzly4,
      ImageConstants.newzly5,
      ImageConstants.newzly6,
      ImageConstants.newzly7,
    ],
  ),
  ProjectEntity(
    name: 'Lola gallery',
    description:
        "Lola Gallery is a specialized e-commerce app that offers a wide range of stunning accessories, including gold and silver jewelry, brought to you by a trusted local brand in Port Fouad.",
    icon: ImageConstants.lola,
    mainFeatures: [
      "🛒 User App:\nBrowse a curated collection of accessories, including rings, earrings, and more.\nView updated gold and silver prices daily.\nEasily place orders online for your favorite items.",
      "📊 Dashboard App:\nManage product categories like rings, earrings, and other accessories.\nAdd new items with images, descriptions, and prices.\nUpdate gold and silver prices daily for accurate pricing.",
      "🌗 Dark & Light Mode: Switch between dark and light themes to match your reading preference and enhance your comfort.",
      "🌍 Bilingual Support: Access the app in both Arabic and English for a personalized experience.",
    ],
    images: [
      ImageConstants.lola1,
      ImageConstants.lola2,
      ImageConstants.lola3,
      ImageConstants.lola4,
      ImageConstants.lola5,
      ImageConstants.lola6,
      ImageConstants.lola7,
      ImageConstants.lola8,
      ImageConstants.lola9,
      ImageConstants.lola10,
      ImageConstants.lola11,
      ImageConstants.lola12,
    ],
  ),
];
