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

1.  lsp-java

generate .project & .classpath files

    mvn eclipse:eclipse

1.  projectlombok
2.  ejc-sql
    
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

1.  evil-fcitx

2.  insert-translated-name
    
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
3.  plantuml uml

\\#+BEGIN\_SRC plantuml :file ime.svg

a -> b

\\#+END\_SRC

1.  number-region
2.  counsel-fzf-dir-function
3.  custom-set-faces
4.  some shortcuts


# DEPENDENCIES

<https://github.com/junegunn/fzf>

<https://github.com/BurntSushi/ripgrep>

<https://github.com/kostafey/ejc-sql>

<https://plantuml.com/>

<https://github.com/emacs-lsp/lsp-java>

<https://projectlombok.org/>

