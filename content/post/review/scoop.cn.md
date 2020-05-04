+++
title = "软件推荐: Windows的程序管理器，Scoop"
date = 2020-05-06T01:02:12+08:00
tags = ["review", "software"]
categories = ["软件推荐"]
description = "简洁又方便的Windows命令行程序管理器，基于PowerShell和git。"
images = []
+++

I have always been a forgiving person when it comes to pop-ups, thanks to the four ad blockers installed on each and every one of my web browsers.
However, ad blockers are restricted to web browsing, they are powerless against the pop-ups from the operating system.
Of course, being a forgiving person that I am, closing them quietly without complain would be an expected reaction.

But perhaps the sheer number of programs installed, used, and maintained is too great in the modern digital world, or perhaps the rate of updates too frequent (I'm looking at you Adobe Flash Player), it has became a time-consuming chore just to deal with them every day.
Not to mention that the pop-ups will break your focus, your workflow, your gaming experience, often at the worst time possible...

Anyway, I spent some time thinking through this problem two days ago.
I had a vague recollection of a software called [*Chocolatey*](https://chocolatey.org/) on Windows that claims to provide a solution to managing multiple applications.
I even had it installed.
So let's trying using Chocolatey!

But since this post isn't about Chocolatey, I'll skip the battle and on to the results.

Chocolatey installs programs to `C:\Program Files\`.
And I hate to pollute `Program Files` folder, because doing anything within it requires a Run As Administrator pop-up.
Installing else where **IS** a built-in solution, but, unfortunately, a *premium* one.

So I uninstalled Chocolatey.
Hey, I'm not a corporate client they are targeting at.

The other reason I uninstalled chocolatey is that while searching for the said solution, I came across a similar package manager called [*Scoop*](http://scoop.sh/).

It's free.\
It doesn't display any pop-up.\
It doesn't pollute Program Files.\
It doesn't pollute Path in environment variables.

That sounds exactly like what I was looking for!

## What is Scoop

This is a scoop.

![Photo of ice-cream scoop from Amazon](https://raw.githubusercontent.com/RCJacH/BlogImages/master/review/scoop/ice_cream_scoop.jpg)

In all seriousness, this is probably what that Scoop is named after, but I digress.

[**Scoop**](http://scoop.sh/) is a [*package manager*](https://en.wikipedia.org/wiki/Package_manager).

A package manager is basically a centralized command line installer.
Rather than using a GUI installer provided by the software developer, which takes time to find, to click through the matrices of "Yes" and "Next", package manager allows us to install packages, another name for programs, automatically from various developers by typing commands in the Terminal, Command prompt, or PowerShell prompt.

Those that use the Unix system are probably using one of them on a daily basis.
Think `apt-get` of Debian, `yum` of Fedora, or `pacman` of Arch Linux.

Don't worry, even if you are not familiar with the command line, I will try to provide an installation and usage walkthrough as thoroughly as possible.

## Sounds Great, Where Do I Start

Open PowerShell prompt on windows by:

1. Press `Win`+`R` on keyboard
2. Type `powershell`
3. Press `Enter`

Then make sure you have PowerShell 5.0 or higher by inputting the following command, then press `Enter`:

```powershell
$psversiontable.psversion.major
```

![New PowerShell instance displaying major version number](https://raw.githubusercontent.com/RCJacH/BlogImages/master/review/scoop/powershell_screenshot_version.png)

If the returned Version number is lower than 5 (likely on Windows 7), you will have to install it manually from here:

[Download Windows PowerShell 5.1](https://www.microsoft.com/en-us/download/details.aspx?id=54616)

With PowerShell 5.0+, first allow PowerShell to execute local scripts:

```powershell
set-executionpolicy remotesigned -scope currentuser
```

Input `y` when given options.

Then install Scoop.

The default installation location of Scoop is at `C:\Users\{{Username}}\scoop`.
If you wish to install it somewhere else, run the following commands after replacing the string `{{ScoopPath}}` at the end of the first line with the path location you wish to install at (for example `C:\scoop`):

```powershell
$env:SCOOP='{{ScoopPath}}'
[environment]::setEnvironmentVariable('SCOOP',$env:SCOOP,'User')
```

In any case, install Scoop with the following command.

```powershell
iwr -useb get.Scoop.sh | iex
```

If there's no connection error, you will likely see this:

![Screenshot after installing Scoop](https://raw.githubusercontent.com/RCJacH/BlogImages/master/review/scoop/powershell_screenshot_scoop_installed.png)

Congratulations, you've now installed Scoop.

## What can I do with Scoop

Since Scoop is a package manager, the first thing we can do is...

Actually the first thing we should do is to read the manual of what Scoop can do.
Scoop makes it easier by providing the `Scoop help` command.
It returns the following:

```commandline
Usage: scoop <command> [<args>]

Some useful commands are:

alias       Manage Scoop aliases
bucket      Manage Scoop buckets
cache       Show or clear the download cache
checkup     Check for potential problems
cleanup     Cleanup apps by removing old versions
config      Get or set configuration values
create      Create a custom app manifest
depends     List dependencies for an app
export      Exports (an importable) list of installed apps
help        Show help for a command
hold        Hold an app to disable updates
home        Opens the app homepage
info        Display information about an app
install     Install apps
list        List installed apps
prefix      Returns the path to the specified app
reset       Reset an app to resolve conflicts
search      Search available apps
status      Show status and check for new app versions
unhold      Unhold an app to enable updates
uninstall   Uninstall an app
update      Update apps, or Scoop itself
virustotal  Look for app's hash on virustotal.com
which       Locate a shim/executable (similar to 'which' on Linux)


Type 'scoop help <command>' to get help for a specific command.
```

Some commands are used for developers or maintainers to create an app manifest - a JSON file that describes how to install/uninstall a program.
As a user, the six most commonly used commands are `install`, `bucket`, `install`, `list`, `search`, `uninstall`, and `update`.

### Scoop Install

This command allow us to install programs.

Since Scoop requires `git` to basically do everything, let's install `git` with scoop.

```commandline
scoop install git
```

![Installed git with Scoop](https://raw.githubusercontent.com/RCJacH/BlogImages/master/review/scoop/powershell_screenshot_scoop_install_git.png)

I find the log from Scoop brief but efficient.
It displays all results that is caused by the installation process, and discards all the details for debugging that clog up the screen for normal usage.
In this case, we realize that in order to install `git`, Scoop has to install `7zip` first to extract the compressed package, so it automatically installed `7zip`.

Now check the start menu, windows will display `7-Zip`, `Git GUI`, and `Git Bash` as recently added programs. They will also appear under the folder `Scoop Apps`.

![Windows start menu after installing git with Scoop](https://raw.githubusercontent.com/RCJacH/BlogImages/master/review/scoop/start_menu_screenshot_after_installing_git.png)

Since we gave no options to `scoop install`, our `git` and `7zip` was installed under the default location `\path\to\scoop\apps\`.
This allows us to run the programs without administrator's permission.

If there's a desire to install programs globally, we can use the option `-g`, as in `scoop install -g git`.

But before that, we should consider where to place our global apps folder.
The default global folder is `C:\ProgramData\scoop\apps\`, but we can change that using the following command.

```powershell
$env:SCOOP_GLOBAL='{{GlobalAppsPath}}'
[environment]::setEnvironmentVariable('SCOOP_GLOBAL',$env:SCOOP_GLOBAL,'Machine')
```

Again, change the `{{GlobalAppsPath}}` to your desired folder path, such as `C:\apps`.

Feel free to explore the other options as well, but I have yet to find a situation to use them.
Use the `scoop help install` command to see full list of options available.

Oh, did I mention that most programs installed by scoop are *portable*?
Meaning that programs have all settings residing inside the program folder, rather than the windows registry.
So you can copy the entire program folder to another windows machine, and it will still open without problems.
Thus called portable.


### Scoop Bucket

There are something Scoop does not have, for everything else, there's ~~M@sterCard~~ the Scoop bucket!

A bucket, in Scoop's term, is basically a repository consisting of multiple app manifests.
I guess it's called a bucket because we are dealing with scoop.

![scoop and bucket from http://stewartdollhousecreations.com/](https://raw.githubusercontent.com/RCJacH/BlogImages/master/review/scoop/ice_cream_bucket.jpg)

Not all programs are enlisted in the default `main` bucket, a list of Scoop buckets can be found in the [scoop-directory](https://rasa.github.io/scoop-directory/).
The most common one is the `scoop-extras`, so add that to our Scoop using the following command.

```commandline
scoop bucket add extras
```

Wait for a while since this bucket contains more than a thousand apps.

![scoop bucket add extras](https://raw.githubusercontent.com/RCJacH/BlogImages/master/review/scoop/powershell_screenshot_scoop_bucket_add_extras.png)

Now we can install [REAPER](http://reaper.fm) with Scoop :).

### Scoop List

This command lists all installed apps, displaying their version info, whether they are global installation, and the bucket they were installed from.

Since we only have two programs installed, our list is short and clear.

![list of scoop apps, 7zip and git](https://raw.githubusercontent.com/RCJacH/BlogImages/master/review/scoop/powershell_screenshot_scoop_list.png)

As the size grows, displaying the whole list might no longer be helpful in order to find specific packages.
In that case, we can give it a query word.
For example list all apps with the string 'zip' using `scoop list zip` and it will display `7zip` but not `git`.

![scoop list zip](https://raw.githubusercontent.com/RCJacH/BlogImages/master/review/scoop/powershell_screenshot_scoop_list_zip.png)

### Scoop Search

This command allows us to search installable app(s), optionally by a query word.

In essence, `scoop search` is like `scoop list`, but including uninstalled apps as well.
It lists all available apps (thousands), grouped by the bucket they came from.

Here's an example of `scoop search` with a query word of `zip`, listing all available apps that contains the queried string.

![scoop search zip](https://raw.githubusercontent.com/RCJacH/BlogImages/master/review/scoop/powershell_screenshot_scoop_search_zip.png)

### Scoop Uninstall

Quick and easy way to uninstall an app.

![scoop uninstall 7zip](https://raw.githubusercontent.com/RCJacH/BlogImages/master/review/scoop/powershell_screenshot_scoop_uninstall_7zip.png)

But do note that **anything installed globally has to be removed globally with** `-g` **option** just like in `scoop install`.

The other option is `-p` as in purge. This will remove all files that persists between updates.

Plus!
Scoop can be uninstalled by Scoop itself! Which is many times more convenient than Chocolatey.
Compare this simple one-liner from Scoop:

```commandline
scoop uninstall scoop
```

with this blob from chocolatey

```powershell
if (!$env:ChocolateyInstall) {
  Write-Warning "The ChocolateyInstall environment variable was not found. `n Chocolatey is not detected as installed. Nothing to do"
  return
}
if (!(Test-Path "$env:ChocolateyInstall")) {
  Write-Warning "Chocolatey installation not detected at '$env:ChocolateyInstall'. `n Nothing to do."
  return
}

$userPath = [Microsoft.Win32.Registry]::CurrentUser.OpenSubKey('Environment').GetValue('PATH', '', [Microsoft.Win32.RegistryValueOptions]::DoNotExpandEnvironmentNames).ToString()
$machinePath = [Microsoft.Win32.Registry]::LocalMachine.OpenSubKey('SYSTEM\CurrentControlSet\Control\Session Manager\Environment\').GetValue('PATH', '', [Microsoft.Win32.RegistryValueOptions]::DoNotExpandEnvironmentNames).ToString()

@"
User PATH:
$userPath

Machine PATH:
$machinePath
"@ | Out-File "C:\PATH_backups_ChocolateyUninstall.txt" -Encoding UTF8 -Force

if ($userPath -like "*$env:ChocolateyInstall*") {
  Write-Output "Chocolatey Install location found in User Path. Removing..."
  # WARNING: This could cause issues after reboot where nothing is
  # found if something goes wrong. In that case, look at the backed up
  # files for PATH.
  [System.Text.RegularExpressions.Regex]::Replace($userPath, [System.Text.RegularExpressions.Regex]::Escape("$env:ChocolateyInstall\bin") + '(?>;)?', '', [System.Text.RegularExpressions.RegexOptions]::IgnoreCase) | %{[System.Environment]::SetEnvironmentVariable('PATH', $_.Replace(";;",";"), 'User')}
}

if ($machinePath -like "*$env:ChocolateyInstall*") {
  Write-Output "Chocolatey Install location found in Machine Path. Removing..."
  # WARNING: This could cause issues after reboot where nothing is
  # found if something goes wrong. In that case, look at the backed up
  # files for PATH.
  [System.Text.RegularExpressions.Regex]::Replace($machinePath, [System.Text.RegularExpressions.Regex]::Escape("$env:ChocolateyInstall\bin") + '(?>;)?', '', [System.Text.RegularExpressions.RegexOptions]::IgnoreCase) | %{[System.Environment]::SetEnvironmentVariable('PATH', $_.Replace(";;",";"), 'Machine')}
}

# Adapt for any services running in subfolders of ChocolateyInstall
$agentService = Get-Service -Name chocolatey-agent -ErrorAction SilentlyContinue
if ($agentService -and $agentService.Status -eq 'Running') { $agentService.Stop() }
# TODO: add other services here

# delete the contents (remove -WhatIf to actually remove)
Remove-Item -Recurse -Force "$env:ChocolateyInstall" -WhatIf

[System.Environment]::SetEnvironmentVariable("ChocolateyInstall", $null, 'User')
[System.Environment]::SetEnvironmentVariable("ChocolateyInstall", $null, 'Machine')
[System.Environment]::SetEnvironmentVariable("ChocolateyLastPathUpdate", $null, 'User')
[System.Environment]::SetEnvironmentVariable("ChocolateyLastPathUpdate", $null, 'Machine')
```

You get the picture.

### Scoop Update

This will update an app, including scoop itself.

By default, as in using `scoop update` without argument, scoop will update itself with git, and displays all new commit logs that was pushed since the last update.
Scoop also updates automatically anytime we install or update an app, along with the buckets that has been added.

We can specify which app(s) to update by adding their names as arguments: `scoop update 7zip git`.
We can also tell scoop to update everything by using the asterisk `scoop update *`.

Again, globally installed apps must use the `-g` option in the update command.

## What's Next

Now that we are familiar with the basics of Scoop, we can install apps to our heart's content.

We can replace all those programs installed in `C:\Program Files` with the ones from Scoop so we can update them all at once at a convenient time, without being bothered by their own notifications.

We can clear the downloaded compressed installer to save hard-drive space by using `scoop cache rm <app>`, and clearing all cache using the asterisk.

We can remove older versions of installed apps by using `scoop cleanup <app>`, with global option `-g` or remove cache option `-k` mentioned above.
Asterisk works for this command as well.

We can prevent app(s) from updating by using `scoop hold <apps>`, and reverting that using `scoop unhold <apps>`.

And, of course, what's a package manager without the ability to automate on multiple systems?
Scoop has a command to export apps list to a text file, but I've yet to find the way to import from it.

Fortunately, there is an app called [scoop-backup](https://github.com/KNOXDEV/scoop-backup) that allows simple backup by saving apps list as a .ps1 or a compressed .bat file, and running that file will restore the entire Scoop installation.

One more thing...

[There's a bucket filled with open-source/freeware games](https://github.com/Calinou/scoop-games).

Have fun.
