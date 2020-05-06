+++
title = "软件推荐: Windows的程序管理器，Scoop"
date = 2020-05-06T01:02:12+08:00
tags = ["review", "software"]
categories = ["软件推荐"]
description = "简洁又方便的Windows命令行程序管理器，基于PowerShell和git。"
images = []
+++

我对弹出窗口一向抱有很宽容的态度，这要归功于网络浏览器的四大护法（Ghostery, AdGuard AdBlocker, Privacy Badger, uMatrix）。
不过，四大护法仅限于网页浏览，它们面对系统自带的弹窗无能为力。
当然，作为一个宽容的人，我不应该手动限制弹窗的自由，应该允许他们在法制下茁壮成长。

所以我决定去添加更多的护法。

在Windows上，我已经拥有了一个强大的软件删除工具，名曰[Bulk Crap Uninstaller](https://www.bcuninstaller.com/)。
它能够在删除软件的时候屏蔽大部分弹窗，并且清除大部分遗留文件和相关注册表信息。

但是那些还有生命力的软件经常在打开时用弹窗热情地提醒我该~~充值~~更新了，亲。

直接关掉它们多过意不去。

果然还是应该让护法处理这些人情世道。

在我朦胧的印象中，Windows有一款比较知名的软件管理器，叫[*Chocolatey*](https://chocolatey.org/)。

呃，不是巧克力拿铁（Choco-Latte），可能是巧克力拿鉄。

搜了一下居然装过。
那让我们试着用用Chocolatey吧！

*由于本文并非关于Chocolatey，我们在此将跳过战斗画面。*

Chocolatey的问题是所有程序都被安装到`C:\Program Files\`。
然而我痛恨污染`Program Files`文件夹，因为做任何修改都需要管理员权限。
更何况备份起来非常困难，每个软件都得单独备份。
重装一次系统至少需要三天的空白期重新安装各种软件，尤其是针对音乐这种落后n年的软件产业。
后来查到Chocolatey允许安装至其他位置，但很可惜，是个付费功能。

所以我把它删了。毕竟我不是企业用户。

我删除Chocolatey的另一个原因是在搜索以上功能时，我找到了另一款功能类似的工具：[*Scoop*](http://scoop.sh/)。

- 免费开源。
- 没有弹窗。
- 不会污染Program Files。
- 不会污染环境变量。
- 软件皆为绿色版本。

满足了护法的所有条件，何乐而不为呢？

## Scoop是什么

这个东西叫scoop。

![Photo of ice-cream scoop from Amazon](https://raw.githubusercontent.com/RCJacH/BlogImages/master/review/scoop/ice_cream_scoop.jpg)


scoop
: 长柄勺, 球形勺。

虽然我们今天讨论的并不是勺子，但这可能是此软件名字的来源，所以导致里面一些功能命名也与其相关。

[**Scoop**](http://scoop.sh/)是一个Windows用的[*软件包管理系统*](https://zh.wikipedia.org/wiki/%E8%BD%AF%E4%BB%B6%E5%8C%85%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F)。

> 软件包管理系统是在电脑中自动安装、配制、卸载和升级软件包的工具组合。

所以比起花时间寻找、下载、运行每个开发商分别提供的使用图形安装器，点击每个窗口的“是”与“下一步”，软件包管理系统能自动获取目标软件所选版本的安装文件，并按照预先设置的规则自动配置，或者自动删除。
用Unix系统的朋友们估计每天都在面对这种工具，例如Debian的`apt-get`，Fedora的`yum`，Arch Linux的`pacman`……
对的，大部分软件包管理系统是在命令行工作的。
不过不要担心，我会尽量把安装和使用流程写得详细一点，这样哪怕你对命令行不是很熟悉也能快速上手。

## 我系好安全带了，油门在哪儿

首先确认你用的是Windows系统，然后打开PowerShell：

1. 在键盘上按下`Win`+`R`
2. 输入`powershell`
3. 键盘按下`Enter`键

然后你需要通过以下命令来确认你的PowerShell版本至少是5.0。
输入字符（拷贝粘贴）后按`Enter`键。

```powershell
$psversiontable.psversion.major
```

![New PowerShell instance displaying major version number](https://raw.githubusercontent.com/RCJacH/BlogImages/master/review/scoop/powershell_screenshot_version.png)

如果返回的版本号小于5.0，通常为Windows 7系统，你需要手动安装PowerShell：

[微软官网PowerShell 5.1下载地址](https://www.microsoft.com/en-us/download/details.aspx?id=54616)

确认PowerShell版本为5.0+之后，先通过以下命令允许它执行本地脚本:

```powershell
set-executionpolicy remotesigned -scope currentuser
```

当给予选择时输入`y`。

然后再安装Scoop。

Scoop的默认安装地址是`C:\Users\{{Username}}\scoop`。
如果你想把它安装在其他位置，修改以下命令第一行末的`{{ScoopPath}}`至你想安装的目录（例如`C:\scoop`），并运行该命令：

```powershell
$env:SCOOP='{{ScoopPath}}'
[environment]::setEnvironmentVariable('SCOOP',$env:SCOOP,'User')
```

不管怎样，通过以下命令安装Scoop。

```powershell
iwr -useb get.Scoop.sh | iex
```

如果没有出任何连接错误，运行结果应该是这样的：

![Screenshot after installing Scoop](https://raw.githubusercontent.com/RCJacH/BlogImages/master/review/scoop/powershell_screenshot_scoop_installed.png)

恭喜成功安装Scoop。

## Scoop能拿来做什么？

既然Scoop是一个软件包管理系统，我们首先...

其实，我们首先要做的是阅读Scoop的使用手册。
这方面Scoop很良心地提供了一个“Scoop help”命令。
输入它会返回以下内容：

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

左手边为Scoop所包含的命令，右侧为该命令的功能。
部分命令是提供给开发人员维护软件manifest所用。
Manifest是一个告诉Scoop如何安装、卸载某软件的JSON文件。
作为普通用户，最主要的六个命令是`install`，`bucket`，`install`，`list`，`search`，`uninstall`，和 `update`。

### Scoop Install

我们通过这个命令安装软件。

Scoop需要使用`git`来做...差不多所有事情，所以让我们先用Scoop安装`git`吧。

```commandline
scoop install git
```

![Installed git with Scoop](https://raw.githubusercontent.com/RCJacH/BlogImages/master/review/scoop/powershell_screenshot_scoop_install_git.png)

我们能从简短的日志获取很多信息。
例如由于安装`git`需要用到`7zip`解压，所以scoop自动安装了`7zip`。
每个软件安装成功后都会创建快捷方式。

现在看一下开始菜单，里面的最新添加的程序列表里会出现`7-Zip`，`Git GUI`，和`Git Bash`。
同时它们也会出现在新建的`Scoop Apps`文件夹内。

![Windows start menu after installing git with Scoop](https://raw.githubusercontent.com/RCJacH/BlogImages/master/review/scoop/start_menu_screenshot_after_installing_git.png)

由于我们在使用`scoop install`时未输入任何选项，`git`和`7zip`被安装在默认位置：`\scoop程序\apps\`。
这样我们可以在没有管理员许可的情况下运行这些程序。

如果想把程序安装在其他位置，我们可以用`-g`选项（代表global）来安装到一个全局范围的文件夹。命令例如`scoop install -g git`。

在此之前，我们需要考虑一下全局程序应该放在哪里。
默认的全局文件夹地址为`C:\ProgramData\scoop\apps\`，不过我们可以用以下命令修改它。

```powershell
$env:SCOOP_GLOBAL='{{GlobalAppsPath}}'
[environment]::setEnvironmentVariable('SCOOP_GLOBAL',$env:SCOOP_GLOBAL,'Machine')
```

别忘了把第一行的`{{GlobalAppsPath}}`替换成你想要设定的文件夹地址，例如`C:\apps`。

安装程序还有一些其他选项，不过对我来说暂时什么用。
你可以用`scoop help install`命令来列出可用的全部选项。

哦，对了，之前我提过安装程序皆为*绿色版本*吧？
*绿色版本*，又名便携版，英文为portable，至软件所有的设置文件都保存在软件的安装目录内。
也就是说你可以直接把软件主目录拷贝走，拿到另一台Windows下也可以使用，不需要重新安装。
更安全，更干净。
不过换来的代价就是一些嵌入系统的软件（例如添加快捷键至右键菜单）需要另行设置。


### Scoop Bucket

bucket
: 桶, 水桶, 吊桶。

在Scoop里指的是包含多个软件manifest的资源库（repository）。
为啥不叫repo而叫bucket，估计因为软件名为勺吧。

![scoop and bucket from http://stewartdollhousecreations.com/](https://raw.githubusercontent.com/RCJacH/BlogImages/master/review/scoop/ice_cream_bucket.jpg)

并不是所有软件都被纳入默认的`main`资源库，还有很多其他原团队或者个人维护的资源库，具体列表参考[scoop-directory](https://rasa.github.io/scoop-directory/)。
其中最常用的一个是`scoop-extras`，我们可以用以下命令添加它：

```commandline
scoop bucket add extras
```

稍等片刻，这个资源库包含了一千多个软件。

![scoop bucket add extras](https://raw.githubusercontent.com/RCJacH/BlogImages/master/review/scoop/powershell_screenshot_scoop_bucket_add_extras.png)

添加完成后我们就可以用Scoop安装[REAPER](http://reaper.fm)了 :)。

### Scoop List

这个命令列出所有已安装的软件，显示它们的版本号，是否为全局安装，并标注来源于哪个资源库。

我们目前只安装了两个，所以……很短，这个列表，但是一目了然。

![list of scoop apps, 7zip and git](https://raw.githubusercontent.com/RCJacH/BlogImages/master/review/scoop/powershell_screenshot_scoop_list.png)

当安装的软件达到一定数量之后，显示整个列表可能不利于寻找单独的软件。
那个时候，我们可以输入搜索词来筛选返回结果。
举个例子，我们给与'zip'搜索词，用`scoop list zip`命令去查找`7zip`而非`git`。

![scoop list zip](https://raw.githubusercontent.com/RCJacH/BlogImages/master/review/scoop/powershell_screenshot_scoop_list_zip.png)

### Scoop Search

这个命令可以让我们搜索所有可安装的软件，类似一个更全面的`scoop list`，也可以使用搜索词。
它会列出每一个所添加的资源库内所有符合搜索词的软件（至少上千个）。

比如说用`zip`作为搜索词使用`scoop search`，它将会列出所有包含该字符串软件。

![scoop search zip](https://raw.githubusercontent.com/RCJacH/BlogImages/master/review/scoop/powershell_screenshot_scoop_search_zip.png)

### Scoop Uninstall

该命令用于删除软件。

![scoop uninstall 7zip](https://raw.githubusercontent.com/RCJacH/BlogImages/master/review/scoop/powershell_screenshot_scoop_uninstall_7zip.png)

值得注意的一点是，**任何全局安装的软件也需要用全局选项**`-g`**来删除**。

另一个选项是`-p`，表示purge清除。
这个选项不仅删除软件，同时会把软件的设置文件也一同删除掉。

此外！
Scoop可以通过此命令删除自己！
这点Chocolatey就很“绅士”了。
对比一下两个软件的删除命令：

Scoop

```commandline
scoop uninstall scoop
```

Chocolatey

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

你懂的。

### Scoop Update

用此命令升级指定软件，包括Scoop本身。

若不输入任何参数，直接使用`scoop update`，Scoop会使用git自我更新，一同更新所有添加过的资源库，并且显示距离上次更新起的所有更新信息。
而且每次安装或升级软件时，Scoop都会自动更新。

我们可以单独更新指定软件：`scoop update 7zip git`。
我们也可以用星号告诉Scoop去更新所有安装的软件：`scoop update *`。

注，升级全局软件需要用`-g`选项。

## What's Next

以上是Scoop的基础操作，常用功能很快就能上手。

我已经把原先单独安装的大部分软件，通过Bulk Crap Uninstaller删除之后，都用Scoop重装了一遍，这样我可以定期一起更新所有软件，不用被单独的提示扰乱工作。

以下几个命令可以在适当场合下使用：

- `scoop cache rm <app>`用来删除所下载的安装文件以便节省硬盘空间。
- `scoop cleanup <app>`可以用来删掉软件的旧版本，注意全局设置。
- `scoop hold <apps>`禁止指定软件停止更新
- `scoop unhold <apps>`来允许指定软件继续更新

以上命令皆可用星号代表所有软件。

最后，软件包管理系统还有一个非常重要的功能：

**备份！**

毕竟我们目的就是减少人为操作，所以软件包管理系统的备份功能是非常可贵的。
Scoop有一个功能可以导出所安装的软件至文本文件，但目前我还没找到如何导入……

幸运的是，有一款叫[scoop-backup](https://github.com/KNOXDEV/scoop-backup)的软件可以把当前所安装的软件都导出成一个.ps1文件或者.bat文件。
双击该文件可以恢复整个Scoop软件列表。

不过persist文件夹的设置文件目前还需要手动拷贝粘贴。

One more thing...

[软勺有个桶盛满了免费开源游戏](https://github.com/Calinou/scoop-games)。

祝玩快。