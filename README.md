# Flutter GetX  practise

This project is guiding you to How to use Getx, as  Flutter state management.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


#  Getx practise - issue/problems which I have on with 

while using getx what I have is when you are wraping you widgets with GetBuilder with the controller, before that you shoul add that controller to the Get.put(controller()),  that will inject to the memoty.

otherwise you didn't did that you will get the error like "GetInstance(controller) = null" it says null value error
