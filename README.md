# Simon Game for Arduino


Vedio demo for difficulty level 1: https://drive.google.com/file/d/1AJOK6Fd9N_aRz3EvveTHq3xZW6h7Eyrp/view?usp=sharing
A classic Simon Game implementation for Arduino using a 16x2 LCD display and four buttons. Test your memory and reflexes by repeating the sequence displayed by the game!

## Introduction
The Simon Game is a classic electronic game that challenges your memory and reaction time. In this Arduino-based implementation, you will see a sequence of symbols displayed on a 16x2 LCD. Your task is to replicate the sequence by pressing the corresponding buttons. As the game progresses, the sequences become longer and more challenging.

This project serves as a fun and educational introduction to Arduino programming and interfacing with hardware components.

## Hardware Requirements
To build and play the Simon Game, you will need the following components:
- Arduino board (e.g., Arduino Uno)
- 16x2 LCD display
- Four push buttons
- Jumper wires
- Breadboard or custom circuit board
- Resistor (for button pull-up or pull-down)

Ciruit diagram available at Schematics.jpg in the repository.

## Setup Instructions
Follow these steps to set up the Simon Game on your Arduino:
1. **Hardware Connection:** Wire up the LCD display and four buttons to the Arduino following the circuit diagram provided in the "Hardware Requirements" section.
2. **Arduino IDE:** Install the Arduino IDE if you haven't already.
3. **Upload the Code:** Open the Arduino sketch provided in this repository (`simon_game.ino`) in the Arduino IDE and upload it to your Arduino board.
4. **Power On** Connect your Arduino to a power source.
5. **Play the Game:** Follow the on-screen instructions to select the difficulty level and start playing.

## Usage
1. **Difficulty Selection:** Press the buttons corresponding to the difficulty levels displayed on the LCD.
2. **Gameplay:** Watch the LCD for the sequence of symbols displayed. Try to remember the sequence.
3. **Repeat the Sequence:** After the sequence is shown, it's your turn. Use the buttons to input the same sequence in the correct order.
4. **Winning:** If you successfully replicate the sequence, you win! The game will advance to the next level.
5. **Game Over:** If you make a mistake, the game will end, and you can try again.

## Contributing
Contributions are welcome! If you want to improve the project, fix bugs, or add new features, please follow these steps:
1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes.
4. Test thoroughly.
5. Submit a pull request.

Please ensure your code follows good coding practices and includes documentation where necessary.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

Enjoy playing the Simon Game on your Arduino! If you have any questions or encounter issues, feel free to open an issue in this repository.

Yongqing Liu
yliu1300@gmail.com
