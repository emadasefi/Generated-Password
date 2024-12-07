Password Generator Script
====================================
This Bash script is a simple yet effective password generator that allows users to create secure passwords of a specified length. It supports both Persian and English languages, making it accessible to a wider audience.


## ▚ Features
<li><strong>Language Selection:</strong> The script prompts users to choose their preferred language (English or Persian) at the start.
Password Length Input: Users can specify the desired length of the passwords they wish to generate.</li>
<li><strong>Input Validation:</strong> The script includes input validation to ensure that the provided password length is a valid number, enhancing user experience by preventing errors.</li>
<li><strong>Password Generation:</strong> Using the openssl command, the script generates three random passwords based on the specified length. The passwords are encoded in Base64 and truncated to the desired length for security.</li>
<li><strong>Output Display:</strong> The generated passwords are displayed in a visually appealing format, with color-coded output for better readability.</li>


## ▚ How It Works
<li>The script begins by defining color codes for terminal output.</li>
<li>It prompts the user to select a language for interaction.</li>
<li>Depending on the chosen language, it asks for the desired password length.</li>
<li>After validating the input, it generates three random passwords using openssl and stores them in an array.</li>
<li>Finally, it prints the generated passwords in a formatted manner.</li>
<li>This script is particularly useful for users looking to create strong passwords quickly and easily, without needing advanced technical skills.</li>


## — Feedback ❤️—
Please leave a comment if you have any comments, suggestions or problems.

