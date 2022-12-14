# Installation

Automation Project on Start Americas Together website with Ruby 2.6.10p210, cucumber 9.0.0, capybara 3.36.0, selenium 0.2.11 and chromedriver

Links
• https://rubyinstaller.org/downloads/
• https://chromedriver.chromium.org/downloads

1. 
On Windows:
Install Ruby+Devkit (rubyinstaller-devkit-3.0.2-1- x64.exe)

On Mac:
Search for Ruby folder on Library folder because it is preinstalled in every macOS

2. Add Ruby to the path

3. Verify you have installed successfully running the command ruby –v
![Alt text](/Users/javsferrel/Desktop/Gestión de Calidad de Sistemas/Ruby-screenshot.png "Ruby Installation")

4. Set Up Environment/ Install Ruby Gems

On Windows:
• gem install cucumber
• gem install capybara
• gem install selenium-webdriver
• gem install selenium
• gem install rspec
• gem install capybara-screenshot
• gem install watir

On Mac:
• sudo gem install cucumber
• sudo gem install capybara
• sudo gem install selenium-webdriver
• sudo gem install selenium
• sudo gem install rspec
• sudo gem install capybara-screenshot

If gem need previous versions follow the instructions given at the moment of installation

5. Download ChromeDriver according to your Google Chrome version

6. Unarchive and Add ChromeDriver to your path

# Using cucumber 

Most common commands(run all commands from root directory):

## for all scenarios in all the feature archives 
cucumber features

## for all scenarios in a feature archive
cucumber features/"archive.feature"

## for a certain scenario in a feature archive
cucumber features/"archive.feature" -t @"nameOfTag"

# Directories 

Features folder contains:
- All of the feature archives developed
- support folder: 
    - Contains Configurations with cucumber and capybara
    - Contains the variables used in the steps ( Users and passwords)

- step_definitions folder:
    - Contains the .rb archives in which we developed the steps to test the scenarios written in the features

- Reports folder contains:
    - All the reports made from the results of the scenarios.

    - Use the following command to create reports:
    cucumber features/"archive.feature" --format html --out reports/helloworld.html