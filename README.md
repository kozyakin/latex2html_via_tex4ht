# latex2html via tex4ht

Однажды мне потребовалось конвертировать LaTeX-файл с математическими формулами в HTML-файл. Будучи новичном в данном предмете, я немедленно столкнулся со следующими вопросами:

* Как запустить Tex4ht, чтобы получить HTML файл с математикой?
* Что надо сделать для надлежащих ссылок на математические формулы?
* Как вставить рисунки TikZ?

Через некоторое время я обнаружил, что наиболее простой и подходящий способ для этого &mdash; "соединить"
**Tex4ht** c **MatJax**. Пример преобразования TeX-файла с множеством математики в HTML приводится здесь.

## Пререквизиты и подготовка

* **TexLive** или **MikTex** (или любая другая система **TeX**)
* **Perl**, доступный для всех пользователей (т.е. добавленный в системный **PATH**)
* **tidy** (программа чистки HTML кода), доступная для всех пользователей (т.е. установленная и добавленная в системный **PATH**); может быть загружена с сайта [HTML Tidy](https://www.html-tidy.org/) или [htacg/tidy-html5](https://github.com/htacg/tidy-html5)
* **Node.js** (среда выполнения **JavaScript**) с дополнительно установлеными модулями **purifycss** и **cleancss**

## Создание HTML

1. Создайте временную папку и скопируйте в нее все файлы из папки **latex2html_via_tex4ht**

2. Выполните (в терминале или командной строке) одну из команд

   ```sh
   make4ht+inject_css_js+cleaning.cmd
   make4ht+inject_css_pl+cleaning.cmd
   ```

3. Через некоторое время Вы получите файл **latex2html_via_tex4ht.html**

4. В **latex2html_via_tex4ht.html** допишите "*руками*" в начале путей к рисункам символы "./"

## Замечание

Описанная процедура не создает файл **latex2html_via_tex4ht.pdf**. Если Вы хотите создать файл **latex2html_via_tex4ht.pdf**, запустите обычную компиляцию TeX-файла с помощью программы **PDFLaTeX**.

---

Once I needed to convert a LaTeX file with mathematical formulas into an HTML file. As a beginner, I immediately faced the following problems:

* How to run Tex4ht to get HTML file with mathematics?
* What to do to make proper referencing of mathematical formulas?
* How to cope with TikZ figures?

After a while I discovered that the most suitable way for me is to join
**Tex4ht** with **MatJax**. Example to transform TeX files with plenty of mathematics to HTML is contained here.

## Prerequisites and Preparation

* **TexLive** or **MikTex** (or any other **TeX** system)
* **Perl**, available to all users (i.e. added to the system **PATH**)
* **tidy** (HTML cleaner), available to all users (i.e. installed and added to the system **PATH**); can be downloaded from [HTML Tidy](https://www.html-tidy.org/) or [htacg/tidy-html5](https://github.com/htacg/tidy-html5)
* **Node.js** (JavaScript runtime) with the **purifycss** and **cleancss** modules additionally installed

## Generating HTML

1. Create a temporary directory and put there all the files from directory **latex2html_via_tex4ht**
2. Run one of the following commands

    ```sh
    make4ht+inject_css_js+cleaning.cmd
    make4ht+inject_css_pl+cleaning.cmd
    ```

3. After a while you should get **latex2html_via_tex4ht.html**
4. In **latex2html_via_tex4ht.html** prepend "*by hand*" paths to figure files by "./"

## Remark

Described procedure does not create **latex2html_via_tex4ht.pdf** file. If you want to create **latex2html_via_tex4ht.pdf**, run usual **PDFLaTeX** procedure.
