+++
title = "Review: Scoop"
date = 2020-05-01T08:08:53+08:00
tags = []
categories = []
description = ""
menu = ""
banner = ""
images = []
+++

I had always been a forgiving person when it comes to popups, thanks to the four ad blockers installed on each and every one of my web browsers.
However, ad blockers are restricted to web browsing, they are powerless against the popups from your operating system.
Of course, being a forgiving person that I am, closing them quietly without complain would be an expected reaction.

Perhaps the sheer number of programs installed, used, and maintained are too great, or perhaps their frequency of updates too high (I'm looking at you adobe flash player), it has became a time-consuming chore just to deal with them every day.
Not to mention that the popups will break your focus, often at the worst time possible.
And don't get me started on the incompatibility of Zen mode with multiple monitors...

Anyway, I spent some time thinking through this problem two days ago.
I had a vague recollection of a software called [*Chocolatey*](https://chocolatey.org/) on Windows that claims to provide a solution to managing multiple applications.
I even had it installed.
So let's trying using Chocolatey!

But since this post isn't about chocolatey, I'll skip the battle and on to the results.

Chocolatey installs programs to `C:\Program Files\`.
And I hate to pollute `Program Files` folder, because doing anything within it requires a Run As Administrator popup.
Installing else where **IS** a built-in solution, but, unfortunately, a *premium* one.

So I uninstalled Chocolatey.
Hey, I'm not a corporate client they are targeting at.

The other reason I uninstalled chocolatey is that while searching for the said solution, I came across a similar package manager called Scoop.

It's free.\
It doesn't display any popup.\
It doesn't pollute Program Files.\
It doesn't pollute Path in environment variables.\
That sounds like exactly what I was looking for!

## What is Scoop

This is a Scoop.

![Photo of ice-cream Scoop]()

In all seriousness, this is probably what that Scoop is named after, but I digress.

Scoop is a package manager.

Those that use the Unix system are probably using one on a daily basis, for example, apt-get of Debian, yum of Fedora, or pacman of Arch.
A package manager is basically a centralized command line installer.
Rather than using a GUI installer provided by the software developer, which takes time to find, to click through the endless "Yes"es and "Next"s, package manager allows us to install packages automatically from various developers by typing commands in the Terminal, Command prompt, or PowerShell prompt.

## Sounds Great, Where Do I Start?

Open PowerShell prompt on windows:

1. Press Win+R
2. Enter `powershell`

Then you have to make sure you have PowerShell 5.0 or higher

```powershell
$psversiontable.psversion.major
```

![New PowerShell instance displaying major version number]()

If the returned Version number is lower than 5 (Windows 7), you will have to install it manually from here:

[Download PowerShell 5.1](https://www.microsoft.com/en-us/download/details.aspx?id=54616)

With PowerShell 5.0+, first allow PowerShell to execute local scripts:

```powershell
set-executionpolicy remotesigned -scope currentuser
```

Input `y` when given options.

Then install Scoop.

In case you wish to install Scoop other than the default location @ `C:\Users\Username\Scoop`, replace the following `C:\Scoop` with the location you wish to install at, and run these commands:

```powershell
$env:SCOOP='C:\Scoop'
[environment]::setEnvironmentVariable('SCOOP',$env:SCOOP,'User')
```

In any case, install Scoop with the following command.

```powershell
iwr -useb get.Scoop.sh | iex
```

If there's no connection error, you will likely see this:

![Screenshot after installing Scoop]()

Congratulations, you've now installed Scoop.

## What can I do with Scoop?

Since Scoop is a package manager, the first thing we can do is...

Actually the first thing we should do is to read the manual of what Scoop can do.
Scoop makes this easier by with the `Scoop help` command.
It returns the following:

```commandline
Usage: Scoop <command> [<args>]

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


Type 'Scoop help <command>' to get help for a specific command.
```

Some commands are used for developers or maintainers to create app manifests, a JSON file that describes how to install/uninstall a program.
As a user, the six most commonly used commands are `bucket`, `install`, `list`, `search`, `uninstall`, and `update`.

### Scoop Bucket

There are something Scoop does not have, for everything else, there's ~~MasterCard~~ the Scoop bucket!

A bucket, in Scoop's term, is basically a repository consisting of multiple app manifests.
I guess it's called a bucket because we are dealing with Scoop.

![scoop and bucket from http://stewartdollhousecreations.com/]()

Not all programs are enlisted in the default `main` bucket, a list of Scoop buckets can be found in the [scoop-directory](https://rasa.github.io/scoop-directory/).
The most common one is the `scoop-extras`, so add that to our scoop using the following command.

```commandline
scoop bucket add extras
```

Wait for a while since this bucket contains more than a thousand apps.

![scoop bucket add extras]()

Now we can install REAPER with scoop :).

### Scoop Install

This command allow us to install programs.
Since Scoop requires `git` to update, why not install git to begin with?
Let's install git with scoop.

```commandline
scoop install git
```

![Installed git with Scoop]()

I find the log from Scoop brief but efficient.
It displays all results that is caused by the installation process, and discards all the details that might clog up the screen but provides little use other than debugging.
In this case, we realize that in order to install `git`, Scoop has to install `7zip` first to extract the compressed package, so it automatically installed 7zip.

Now check the start menu, windows will display `7-Zip`, `Git GUI`, and `Git Bash` as recently added programs. They will also appear under the folder called `Scoop Apps` in the start menu.

![Windows start menu after installing git with Scoop]()

Since we gave no options to `Scoop install`, our Git and 7-Zip was installed under the default location `\path\to\Scoop\apps\`.
This allows us to run the programs without administrator's permission.

If there's a desire to install programs globally, we can use the option `-g`.

But before that, we should consider where to place our global apps folder.
The default global folder is `C:\ProgramData\Scoop\apps\`, but we can change that using the following command.

```powershell
$env:SCOOP_GLOBAL='c:\apps'
[environment]::setEnvironmentVariable('SCOOP_GLOBAL',$env:SCOOP_GLOBAL,'Machine')
```

Again, change the `c:\apps` to where your desired folder path.
Feel free to explore the other options as well, but I have yet to find a applicable situation to use them.
Use the `Scoop help install` command to see full list of options available.

Oh, did I mention that most programs installed by scoop are *portable*?
Meaning that programs have all settings residing inside the program folder, rather than the windows registry.
So you can basically copy the entire program folder, and open the program on another windows machine.
Thus called portable.

### Scoop List

This command lists all installed apps, displaying their version, their installed location name and which bucket they came from.
Since we only installed two programs, our list is short and clear.

![list of scoop apps, 7zip and git]()

As this list grows, it might not be sufficient to display the whole list anymore.
In that case, we can give a query word. For example list all apps with the string 'zip' using `scoop list zip` and it will display 7zip but not git.

![scoop list zip]()

### Scoop Search

This command allows us to search an installable app, optionally by a query word.
So in essence, `scoop search` lists all available apps (thousands), and `scoop search zip` lists all available apps that contains the string `zip`, grouped by their bucket.

### Scoop Uninstall

Quick and easy way to uninstall a target app.

```commandline
scoop uninstall git
```

But do note that anything installed globally has to be removed globally with `-g` option just like in `scoop install`.

The other option is `-p` as in purge. This will remove all files that persists between updates.

Plus!
Scoop can be uninstalled by scoop itself! Which is many times more convenient than chocolatey.
Compare this simple one-liner from scoop:

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
By default, as in using `scoop update` without argument, scoop will update itself with git, and display all the new commits that was pushed since the last update.
Scoop also updates automatically anytime we install or update a new app, along with the buckets that was added locally.

We can specify which app(s) to update by adding their name as argument: `scoop update 7zip git`. We can also tell scoop to update everything by using the asterisk `scoop update *`.

Again, globally installed apps must use the `-g` option in the update command.

## What's Next?

Now that we are familiar with the basics of Scoop, we can install apps to our heart's content.

We can replace all those programs installed in `C:\Program Files` with the ones from Scoop so we can update them all at ones at a convenient time, without being bothered by their own notifications.

We can clear the downloaded compressed installer to save some hard-drive space by using `scoop cache rm <app>`.

We can remove older versions of installed apps by using `scoop cleanup <app>`, with global option '-g' or remove cache option `-k` mentioned above.

We can prevent app(s) from updating by using `scoop hold <apps>`

And, of course, what's a package manager without the ability to automate on multiple systems?
Scoop has a command to export apps list to a text file, but I've yet to find a way to import from it.

Fortunately, there is an app called [scoop-backup](https://github.com/KNOXDEV/scoop-backup) that allows simple backup by saving apps list as a .ps1 or a compressed .bat file, and running that file will restore the entire Scoop installation.
I have not had the chance to try this, but it sounds promising.

And one last thing.
[There's a list of open-source/freeware games](https://github.com/Calinou/scoop-games).
Have fun.
