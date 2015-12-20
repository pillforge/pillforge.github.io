---
layout: home
title: Design Environment
permalink: /design/
---

<!-- # Design Environment for Capsule Robots -->

## Design Environment

Just as the component-based approach on the hardware side is beneficial, we have developed our design environment utilizing [TinyOS](http://tinyos.net/) which is a component based operating system for wireless sensor networks and embedded devices.

We are using a graphical design environment to welcome all sorts of users. The graphical modeling environment is being developed on top of [WebGME](http://webgme.org).

All the source code along with the instructions is served at the Github page: [Design Environment Source Code](https://github.com/pillforge/mcr_ide).


There are two different abstractions for implementing applications. A developer can either create his application with pure TinyOS representation or use templates.

## Demo

### For drug.delivery template app.

* Go to [pillforge.webgme.org](http://pillforge.webgme.org)
* Create a new project by providing a project name.
* Choose an *existing seed* called **DrugDelivery** to create the project.
* Go to apps folder by double clicking either on the object or through the object browser on the right side bar
* Open one of the two applications called **DrugDeliveryMCR** or **DDBase**
* Modify the input values if you wish
* While within the app object, you'll see a clickable play button on top left. To compile the application:
  * Click on the play button
  * A menu pops up, click on **Run DrugDelivery** option
  * Click **Save & Run** button
  * A while later a value will appear on the play button on top left, click on it
  * Click **Show results...**
  * Click on **Details** in the list object
  * If the compilation is successful, you can download the files under the **Generated Artifacts** title

Source: [https://github.com/pillforge/drug.delivery](https://github.com/pillforge/drug.delivery)

### For pure TinyOS app SenseAndSend

* [Open the link](http://pillforge.webgme.org/?project=guest%2BSenseAndSend&branch=master&node=%2F1138634074%2F1973051505&visualizer=ModelEditor&tab=0&selection=%2F1138634074%2F1973051505%2F1806907828)
* Double click the book icon on SenseAndSendAppC
* Compile the App
* Download the App

http://pillforge.webgme.org/?project=guest%2BSenseAndSend&branch=master&node=%2F1138634074%2F1973051505


