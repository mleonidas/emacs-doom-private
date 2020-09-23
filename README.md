![img](tui-cut.png)


# INSTALL EMACS

Choose your operation system and install it.

<https://www.gnu.org/software/emacs/>


# CLONE DOOM

    git clone https://github.com/hlissner/doom-emacs.git ~/.emacs.d/


# CLONE REPOSITORY

    git clone https://github.com/vanniuner/emacs-doom-private.git ~/.doom.d/


# PRIVATE SETTING

Changing config in the package.el.

    (add-to-list 'load-path "~/.doom.d/myconfig")


# DOOM INSTALL

Make sure that you have some setting in your terminal environment.

Set up a vpn if you need it.

    export http_proxy="ip:port"
    export https_proxy="ip:port"

Set your emacs cmd for doom install.

    export EMACS= $YOUR EMACS CMD PATH$

At last run below, this will take few minutes. And it depends on the quality of your network.

    ~/.emacs.doom/bin/doom install


# QUESTION

-   how to install leetcode for my\_cookies

<https://github.com/kaiwk/leetcode.el/issues/63>

-   how to reducing mvn compilation time

<https://github.com/ashkrit/corejava/tree/master/compilerplugin>

-   how to use jerebel standalone for jvm
    -   download jrebel standAlong
        <https://www.jrebel.com/products/jrebel/download>
    -   crack project
        git clone <https://gitee.com/gsls200808/JrebelLicenseServerforJava.git>
        -   mvn package
        -   java -jar JrebelBrainsLicenseServerforJava-1.0-SNAPSHOT-jar-with-dependencies.jar -p 8081
        -   /etc/hosts
            127.0.0.1   myjrebel.cn
        -   uuid -> $> uuidgen
            i.e. 8A41D967-8075-4570-9B2A-020858D03E34
        -   URL <http://myjrebel.cn:8081/${uuid>}
            e.g. <http://myjrebel.cn:8081/8A41D967-8075-4570-9B2A-020858D03E34>
        -   theActivation  $jrebel/activate-gui.sh
        -   setTheOffline  $jrebel/go-offline.sh
    -   project setting
        -   target/class/rebel.xml
            
                <?xml version="1.0" encoding="UTF-8"?>
                <application generated-by="maven" build-tool-version="3.6.1" plugin-version="1.1.10" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.zeroturnaround.com" xsi:schemaLocation="http://www.zeroturnaround.com http://update.zeroturnaround.com/jrebel/rebel-2_2.xsd">
                <classpath>
                    <dir name="projectpath/target/classes"></dir>
                </classpath>
                </application>
        -   mvn or jvm launch parameters
            
                #!/bin/bash
                ps -ef | grep spring-boot | awk '{print $2}' | xargs kill -9
                mvn pre-clean install -f ../pom.xml -pl model-a,model-b -Dmaven.test.skip=true -Dmaven.compile.fork=true
                export MAVEN_OPTS="-Xmx3000m -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=1044 -Dreble.base=~/.jrebel -noverify -agentpath:~/soft/jrebel2020/jrebel-2020.2.3-nosetup/jrebel/lib/libjrebel64.so"
                mvn -Dmaven.test.skip=true spring-boot:run -Dmaven.compile.fork=true -Djar.forceCreation
-   how to update doom project or emacs plugins
    -   for force update
        rm -rf .emacs.d/.local/straight
    -   for update plugins
        .emacs.d/bin/doom upgrade


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
<td class="org-left">KEY</td>
<td class="org-left">FUNCTION</td>
</tr>


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


## dap-java

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">KEY</td>
<td class="org-left">FUNCTION</td>
</tr>


<tr>
<td class="org-left">, n</td>
<td class="org-left">dap-next</td>
</tr>


<tr>
<td class="org-left">, b</td>
<td class="org-left">dap-breakpoint-toggle</td>
</tr>


<tr>
<td class="org-left">, c</td>
<td class="org-left">dap-continue</td>
</tr>


<tr>
<td class="org-left">, r</td>
<td class="org-left">dap-eval-region</td>
</tr>


<tr>
<td class="org-left">, a</td>
<td class="org-left">dap-eval-thing-at-point</td>
</tr>


<tr>
<td class="org-left">, d</td>
<td class="org-left">dap-debug</td>
</tr>


<tr>
<td class="org-left">, u</td>
<td class="org-left">dap-ui-repl</td>
</tr>
</tbody>
</table>


## projectlombok


## ejc-sql

Config your db connection in the ../myconfig/db.el.

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">KEY</td>
<td class="org-left">FUNCTION</td>
</tr>


<tr>
<td class="org-left">M-x ejc-connection</td>
<td class="org-left">ejc-connection</td>
</tr>


<tr>
<td class="org-left">C-c C-c</td>
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


## emacs-rime

<https://github.com/DogLooksGood/emacs-rime>


## emacs-ranger

<https://github.com/ralesi/ranger.el>


## insert-translated-name

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">KEY</td>
<td class="org-left">FUNCTION</td>
</tr>


<tr>
<td class="org-left">; t</td>
<td class="org-left">insert-translated-name-replace-with-camel</td>
</tr>
</tbody>
</table>

hello -> 你好

你好 -> hello


## plantuml uml

You can use Customizer plant themem.

    +BEGIN_SRC plantuml :file ime.svg
    !define DARKBLUE
    !include myconfig/style-class.puml
    
    a -> b
    #+END_SRC


## dot uml

    #+BEGIN_SRC dot :file ab.png
    digraph G {
        node [shape="box"];
        a -> b;
    }
    #+END_SRC


## number-region

For insert the sequence.

M-x number-region


## book-mark

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">KEY</td>
<td class="org-left">FUNCTION</td>
</tr>


<tr>
<td class="org-left">&rsquo; c</td>
<td class="org-left">bm-toggle</td>
</tr>


<tr>
<td class="org-left">&rsquo; n</td>
<td class="org-left">bm-next</td>
</tr>


<tr>
<td class="org-left">&rsquo; p</td>
<td class="org-left">bm-previous</td>
</tr>
</tbody>
</table>


## string-inflection

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">KEY</td>
<td class="org-left">FUNCTION</td>
</tr>


<tr>
<td class="org-left">; r</td>
<td class="org-left">string-inflection-java-style-cycle</td>
</tr>
</tbody>
</table>

emacsLisp => EMACS\_LISP => EmacsLisp => emacsLisp


## counsel-fzf-dir-function

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">KEY</td>
<td class="org-left">FUNCTION</td>
</tr>


<tr>
<td class="org-left">SPC z</td>
<td class="org-left">counsel-fzf</td>
</tr>
</tbody>
</table>


## custom-set-faces


## font

Sarasa-Gothic
Sarasa-Mono-SC-Nerd


## some shortcuts

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">KEY</td>
<td class="org-left">FUNCTION</td>
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


## vtm quick ssh-buffer

<https://github.com/laishulu/emacs-vterm-manager>

config.fish

    alias %some-command% "ssh %your_ssh_config% -t 'cd %your_wanted_path%; bash'"


# DEPENDENCIES

<https://github.com/junegunn/fzf>

<https://github.com/BurntSushi/ripgrep>

<https://github.com/kostafey/ejc-sql>

<https://plantuml.com/>

<https://github.com/emacs-lsp/lsp-java>

<https://projectlombok.org/>

<https://github.com/be5invis/Sarasa-Gothic>

<https://github.com/laishulu/Sarasa-Mono-SC-Nerd>

<https://github.com/akicho8/string-inflection>

<https://github.com/joodland/bm>

<https://github.com/laishulu/emacs-vterm-manager>

