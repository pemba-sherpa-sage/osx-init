# OS X Initialization Script

This script initializes your new OS X install.

*Note:* This script may require you to enter your `sudo` password for your machine.

To run this script, open the `Terminal` Application, and paste the following:

```
curl https://raw.github.com/pemsher/osx-init/main/osx_init.sh | bash
```

## Programs Installed:
* [iTerm2](https://www.iterm2.com/)
* [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
* Git
* [Homebrew](https://brew.sh/)
* Maven
  * 3.6.3 
* [Visual Studio Code](https://code.visualstudio.com/)
* [Microsoft Teams](https://teams.microsoft.com/downloads)
* [Postman](https://www.getpostman.com/) - Use for HTTP Requests (Web Service Testing)
* [Google Chome](https://www.google.com/chrome/browser/desktop/index.html)
* Java - Installs JDKs from [AdoptJDK](https://adoptopenjdk.net/)
  * 1.8 (defaulted)
  * 1.12

## Programs NOT installed
* [IntelliJ](https://www.jetbrains.com/idea/)
  * Easy Install via Homebrew -- `brew cask install intellij-idea-ce`
  * If you need the Ultimate Edition -- `brew cask install intellij-idea`
* [Eclipse](http://www.eclipse.org/)
  * Easy Install via Homebrew -- `brew cask install eclipse-java`
* [The Unarchiver](https://itunes.apple.com/us/app/the-unarchiver/id425424353?mt=12)
  * Allows you to open 7zip files on OS X
* [Microsoft Remote Desktop](https://itunes.apple.com/us/app/microsoft-remote-desktop/id715768417?mt=12)
  * Allows you to easily connect to Windows VMs


----

# Notes

## Java Versions

This script automatically sets up the ability to switch between Java JDK versions, depending on what you install. These aliases are added to you `$HOME/.zshrc`.

For example, the script already switches you to Java JDK 8
```bash
jdk8
```

Should you want to switch to Java JDK 12, you simply type the following command:
```bash
jdk12
```

## Maven Versions

Similar to Java versions, this script pre-installs Maven versions to your `$HOME/maven` directory. You can easily switch between them via the aliases in your `$HOME/.zshrc`.

**For Maven 3.6.3**
```bash
mvn363
```

