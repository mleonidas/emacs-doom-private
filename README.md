![img](tui-cut.png)


# INSTALL EMACS

Choose your operation system and install it.

<https://www.gnu.org/software/emacs/>


# CLONE DOOM

    git clone https://github.com/hlissner/doom-emacs.git ~/.emacs.doom/


# CLONE REPOSITORY

    git clone https://github.com/vanniuner/emacs-doom-private.git ~/.doom.d/


# DOOM INSTALL

Make sure that you have some setting in your terminal environment.

Set up a vpn if you need it.

    export http_proxy="ip:port"
    export https_proxy="ip:port"

Set your emacs cmd for doom install.

    export EMACS= $YOUR EMACS CMD PATH$

At last run below, this will take few minutes. And it depends on the quality of your network.

    ~/.emacs.doom/bin/doom install


# PLUGINS & FEATURES


## lsp-java

generate .project & .classpath files

    mvn eclipse:eclipse

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">M-i</td>
<td class="org-left">lsp-goto-implementation</td>
</tr>


<tr>
<td class="org-left">M-d</td>
<td class="org-left">lsp-goto-type-definition</td>
</tr>
</tbody>
</table>


## projectlombok


## ejc-sql

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">config</td>
<td class="org-left">in the ../myconfig/db.el</td>
</tr>


<tr>
<td class="org-left">M-x   ejc-connection</td>
<td class="org-left">connect your setting</td>
</tr>


<tr>
<td class="org-left">C-c  C-c</td>
<td class="org-left">execute</td>
</tr>
</tbody>
</table>

    
    <SELECT>
    SELECT * FROM TABLE_ORG
    </SELECT>
    
    <SELECT>
    delimiter ;
    COMMENT ON COLUMN TABLE_ORG.PROJECT_CODE IS '项目编码';
    COMMENT ON COLUMN TABLE_ORG.PERIOD IS '期间';
    </SELECT>


## evil-fcitx


## insert-translated-name

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">; t</td>
<td class="org-left">toggle translate word</td>
</tr>
</tbody>
</table>


## plantuml uml

    
    #+BEGIN_SRC plantuml :file ime.svg
    a -> b
    #+END_SRC


## number-region


## counsel-fzf-dir-function


## custom-set-faces


## some shortcuts

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">key</td>
<td class="org-left">function</td>
</tr>


<tr>
<td class="org-left">f</td>
<td class="org-left">evil-avy-goto-word-1</td>
</tr>


<tr>
<td class="org-left">SPC j</td>
<td class="org-left">evil-avy-goto-word-1</td>
</tr>


<tr>
<td class="org-left">SPC z</td>
<td class="org-left">counsel-fzf</td>
</tr>


<tr>
<td class="org-left">SPC v</td>
<td class="org-left">vterm</td>
</tr>


<tr>
<td class="org-left">M-1</td>
<td class="org-left">neotree-find</td>
</tr>


<tr>
<td class="org-left">M-j</td>
<td class="org-left">drag-stuff-down</td>
</tr>


<tr>
<td class="org-left">M-k</td>
<td class="org-left">drag-stuff-up</td>
</tr>


<tr>
<td class="org-left">; w</td>
<td class="org-left">save-buffer</td>
</tr>


<tr>
<td class="org-left">; b</td>
<td class="org-left">switch-to-buffer</td>
</tr>


<tr>
<td class="org-left">; e</td>
<td class="org-left">ace-window</td>
</tr>


<tr>
<td class="org-left">; d</td>
<td class="org-left">delete-other-windows</td>
</tr>


<tr>
<td class="org-left">; f</td>
<td class="org-left">neotree-find</td>
</tr>


<tr>
<td class="org-left">; n</td>
<td class="org-left">neotree-toggle</td>
</tr>


<tr>
<td class="org-left">; r</td>
<td class="org-left">doom/reload</td>
</tr>
</tbody>
</table>


# DEPENDENCIES

<https://github.com/junegunn/fzf>

<https://github.com/BurntSushi/ripgrep>

<https://github.com/kostafey/ejc-sql>

<https://plantuml.com/>

<https://github.com/emacs-lsp/lsp-java>

<https://projectlombok.org/>

