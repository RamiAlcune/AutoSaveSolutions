# SaveSolution Tool

This tool allows you to easily save your coding solutions by copying and pasting them into a designated folder with an intuitive UI.

## How to Get Started

1. **Download AutoHotkey v1**  
   Download and install the latest version of AutoHotkey v1 from their official website:  
   [https://www.autohotkey.com/download/](https://www.autohotkey.com/download/)

2. **Run the Script**  
   Once installed, run the `SaveSolution.ahk` script as an Administrator.

3. **Enjoy**  
   The tool is now ready to use! Follow the instructions below to organize your coding solutions effortlessly.

## How to Use

1. **Copy Your Code**  
   Use `CTRL+C` to copy any code snippet you want to save.

2. **Open the UI**  
   Press `SHIFT + CTRL + C` to launch the UI window.

3. **Add a Problem Name**  
   In the input field, type the problem name or identifier for the code you copied.

4. **Choose a Folder**  
   Browse and select the folder where you want to save the solution.

## Customization

If you want to add more solution folders (e.g., for different platforms or categories), you can edit the script to include additional folders. Simply modify the array in the script like this:

```ahk
subFolders := ["LeetCode", "CodeForces", "CodeWars", "HackerRank", "NeetCode"]
