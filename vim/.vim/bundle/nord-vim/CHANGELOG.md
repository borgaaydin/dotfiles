<p align="center"><img src="https://cdn.rawgit.com/arcticicestudio/nord-vim/develop/assets/nord-vim-banner.svg"/></p>

<p align="center"><img src="https://assets-cdn.github.com/favicon.ico" width=24 height=24/> <a href="https://github.com/arcticicestudio/nord-vim/releases/latest"><img src="https://img.shields.io/github/release/arcticicestudio/nord-vim.svg?style=flat-square"/></a> <a href="https://github.com/arcticicestudio/nord/releases/tag/v0.2.0"><img src="https://img.shields.io/badge/Nord-v0.2.0-88C0D0.svg?style=flat-square"/></a></p>

---

# 0.6.0
<details>
  <summary>Version Details</summary>
  <p>
    Release Date: *2017-08-03*
    <a href="https://github.com/arcticicestudio/nord-vim/milestone/8">Milestone</a>
    <a href="https://github.com/arcticicestudio/nord-vim/projects/9">Project Board</a>
  </p>
</details>

## Features
### Plugin Support
#### UI
❯ Added basic support for [CtrlP][plugin-ctrlp]. (PR #33, @syedelec)

* Matched characters are using the keyword color instead of the normal text color to make matched characters visible
* Already opened buffers now take the normal text color instead of the comment color

❯ Added basic support [ALE][plugin-ale]. (PR #44, @meck)

* Warning signs are colorized using a `nord13` foreground
* Error signs are colorized using a `nord11` foreground instead of a red background with a white foreground

## Improvements
### UI
❯ The fold marker foreground has been adjusted to match the comment color instead of `nord1` which has been too dark causing them to be unreadable in bright environments. The background color has also been changed to `nord1` to differ from normal comments and the font style is now bold for better legibility. (#38 in PR #40, @dylnmc)

![](https://user-images.githubusercontent.com/7836623/28256249-ad23fa02-6ac0-11e7-873d-584303677662.png)

❯ The highlight text of a active substitute search result is now underlined in order to make it more recognizable. (#35 in PR #41, @KevinSjoberg)

![](https://user-images.githubusercontent.com/7836623/28245896-ebd3abae-6a10-11e7-9e83-85b69cb62455.gif)

#### Neovim
❯ Addded support for the Neovim specific `:CheckHealth` status highlight groups. (#31 in PR #42, @syedelec, Thanks to @dylnmc)

<p align="center"><strong>Before</strong<br><img src="https://user-images.githubusercontent.com/7836623/28258007-150c94d6-6acf-11e7-92ee-c830e26067e4.png"/><br><strong>After</strong><br><img src="https://user-images.githubusercontent.com/7836623/28258017-21c124a8-6acf-11e7-9e93-dfacf0ad8b15.png"/></p>

## Bug Fixes
### UI
❯ Fixed unreadable text color on pending search result highlights. (#32 in PR #39, @syedelec)

<p align="center">Before<br><img src="https://user-images.githubusercontent.com/7836623/28238074-20069028-694c-11e7-985f-f46f8c343ac5.png"/><br>After<br><img src="https://user-images.githubusercontent.com/7836623/28238077-297ccec4-694c-11e7-91cf-dcaae7aefb6d.png"/></p>

# 0.5.0
*2017-04-17*
## Improvements
### Language Support
❯ Implemented optimized styles for Ruby (@hahuang65, #29, 085c1337)
  - Symbols (`rubySymbol`) now have a bold font style
  - Block parameter list symbols (`rubyBlockParameterList`) are now colorized as keywords
  - Local (variable) methods (`rubyLocalVariableOrMethod`) are now colorized as methods

<p align="center"><img src="https://cloud.githubusercontent.com/assets/7836623/25083146/af02dd0a-2355-11e7-8adc-f53b0803a484.png"/></p>

## Bug Fixes
### Documentation
❯ Fixed a typo in the project description. (@arcticicestudio, #28, b2134029)

# 0.4.0
*2017-02-23*
## Features
### [Configurations][readme-configuration]
❯ Added a configuration to enable [italic comments](https://github.com/arcticicestudio/nord-vim#italic-comments).  
To adhere to the Nord style guide this option is disabled by default. It can be enabled by setting the `g:nord_italic_comments` variable to `1`.  
```vim
let g:nord_italic_comments = 1
```
(@kepbod, #13 (PR #16), dc6149f4)

## Improvements
### Plugin Support
❯ The method/function signature live preview of the [`jedi-vim`](https://github.com/davidhalter/jedi-vim) plugin is now colorized correctly. (@mkalinski, #14, a5c3459a)

<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/22618347/4857d88e-eada-11e6-9696-83a8886f5771.png"/><br><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/22618354/63ddffde-eada-11e6-8a60-52a39642728e.png"/></p>

### Language Support
❯ Implemented optimized styles for the Python syntax group `pythonEscape`. (@mkalinski, #22, 360a76ea)
![ghi-22-scrot-pythonescape](https://cloud.githubusercontent.com/assets/7836623/22618370/ad74e7fc-eada-11e6-89f2-23b351e8aa2b.png)

❯ Implemented optimized styles for the SQL syntax groups `sqlSpecial` which is now linked to the `sqlKeyword` group to colorize constants like `true`/`false` and `null` as keywords. (@mkalinski, #23, dcfb441e)

### Documentation
❯ Added the new terminal emulator port project [Nord Hyper](https://github.com/arcticicestudio/nord-hyper)  
[![Nord Hyper](https://cdn.rawgit.com/arcticicestudio/nord/develop/src/assets/nord-hyper-banner.svg)](https://github.com/arcticicestudio/nord-hyper)

# 0.3.0
*2017-01-24*
## Improvements
### Plugin Support
❯ The [Nord lightline.vim][nord-lightline] UI plugin theme now includes better support for the [tmuxline.vim](https://github.com/edkolev/tmuxline.vim) plugin. Before this implementation text shown in the main segment of the tmuxline, generated via the `:Tmuxline lightline` command, has been colorized using `nord0` which  resulted in unreadable text due to a `nord3` background.  
This has been fixed by using `nord5` as foreground color. (@scottwillmoore, #11, 4ea37f7e)

<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/9512557/21741900/4f792f5e-d537-11e6-9e69-09ff11b60c4e.png"/><br><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/21954034/15b87d1e-da47-11e6-9e70-a74aea14c378.png"/><br><strong>With unicode separators</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/21954058/7a7c5266-da47-11e6-8f1f-0203d5270c51.png"/><br><strong>Without specified configurations (tmuxline.vim autodetect)</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/21954072/931669e2-da47-11e6-8db3-cbdf9d6681f1.png"/></p>

## Bug Fixes
### Documentation
❯ Fixed a typo in the [README installation guide](https://github.com/arcticicestudio/nord-vim#via-pluginruntimepath-manager) for Vundle. (@kepbod, #10, 29145bbb)

❯ Fixed the banner of the [Nord iTerm2](https://github.com/arcticicestudio/nord-iterm2) port project showing the [Nord GNOME Terminal](https://github.com/arcticicestudio/nord-gnome-terminal) banner instead. (@shvetsovdm, #8 / [nord/#9](https://github.com/arcticicestudio/nord/issues/9), 7a447b40)

# 0.2.0
*2017-01-02*

## Improvements
❯ Characters under block cursors are now colored darker (`nord0`) while the block cursor is visible to achieve a optimal contrast and to avoid unreadability due to the same cursor- and foreground color (`nord4`). (@arcticicestudio / @scottwillmoore, #9, 30e1f7e3)

<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/21586772/f08a56d2-d0d4-11e6-84e0-37e3021317ad.png"/><br><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/21586785/23ef246c-d0d5-11e6-8573-2e0d8391186c.gif"/></p>

❯ The background color of visual mode selections is now colored in `nord1` instead of `nord3` to avoid a color collision with comments which has led to unreadable text.(@scottwillmoore, #7, bdb209f5)

<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/21588201/c8aa75ba-d0e4-11e6-9426-96bfab1c545f.gif"/><br><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/21588207/d67f29b0-d0e4-11e6-8eba-117f38a9c073.gif"/></p>

# 0.1.2
*2017-01-01*

## Bug Fixes
❯ Fixed a bug where the `g:colors_name` variable has been unset caused by the `syntax reset` call due to the execution
order. (@shuei72, #5, f8ffce24)

# 0.1.1
*2016-12-26*

## Bug Fixes
❯ Fixed wrong color variables (`*_term` to `*_gui`) for the `guisp` attribute of all `Spell*` highlighting groups which caused error logs while loading `vim`/`gvim`/MacVim. (@kamwitsta, #4, 4d642b9b)

# 0.1.0
*2016-12-25*

## Features
Detailed information about features, supported plugins/languages and install instructions can be found in the [README](https://github.com/arcticicestudio/nord-vim/blob/develop/README.md#installation) and in the [project wiki](https://github.com/arcticicestudio/nord-vim/wiki).

❯ Implemented the main color theme file [`nord.vim`](https://github.com/arcticicestudio/nord-vim/blob/develop/colors/nord.vim). (@arcticicestudio, #1, e2832b9)

<p align="center"><img src="https://raw.githubusercontent.com/arcticicestudio/nord-vim/develop/assets/scrot-lang-javascript.png"/></p>

❯ Implemented the [lightline](https://github.com/itchyny/lightline.vim) color scheme file [`nord.vim`](https://github.com/arcticicestudio/nord-vim/blob/develop/autoload/lightline/colorscheme/nord.vim). (@arcticicestudio, #2, f9891ffe)

<p align="center"><img src="https://raw.githubusercontent.com/arcticicestudio/nord-vim/develop/assets/scrot-plugin-support-ui-lightline.png"/></p>

❯ Implemented the [airline](https://github.com/vim-airline/vim-airline) color theme file [`nord.vim`](https://github.com/arcticicestudio/nord-vim/blob/develop/autoload/airline/themes/nord.vim). (@arcticicestudio, #3, e54464a7)

<p align="center"><img src="https://raw.githubusercontent.com/arcticicestudio/nord-vim/develop/assets/scrot-plugin-support-ui-airline.png"/></p>

# 0.0.0
*2016-12-25*
**Project Initialization**

[nord-lightline]: https://github.com/arcticicestudio/nord-vim/blob/develop/autoload/lightline/colorscheme/nord.vim
[plugin-ale]: https://github.com/w0rp/ale
[plugin-ctrlp]: https://github.com/ctrlpvim/ctrlp.vim
[readme-configuration]: https://github.com/arcticicestudio/nord-vim#configuration
