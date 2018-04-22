# Рекомендации
* Рекомендуемый дистрибутив LaTeX для Windows [MiKTeX](http://miktex.org/).
* Рекомендуемый редактор [Sublime Text 2](http://www.sublimetext.com/2) вместе с [менеджером пакетов](http://wbond.net/sublime_packages/package_control) и установленным пакетом [LaTeXTools](https://github.com/SublimeText/LaTeXTools) и PDF просмотрщиком [SumatraPDF](http://blog.kowalczyk.info/software/sumatrapdf/free-pdf-reader.html).
* Рекомендуемые справочные пособия по вопросам связанным с LaTeX: [Bing](http://bing.com/?mkt=en-us), [Google](http://google.com), [Yandex](http://ya.ru) и книги.
* Рекомендуемая программа для ведения библиографической базы данных: [JabRef](http://jabref.sourceforge.net/)
* Инструкция по установке русского Times New Roman из пакета pscyr находится [здесь](http://plumbum-blog.blogspot.com/2010/06/miktex-28-pscyr-04d.html)
* Если возникли **проблемы с pscyr**, то можно переключиться на использование **scalable-cyrfonts-tex**, с которым также могут быть проблемы при установке, но их **проще решить** (см. 
[Wiki→Возникающие-ошибки](https://github.com/mstyura/bsuir-diploma-latex/wiki/Возникающие-ошибки#scalable-cyrfonts-tex-on-ubuntu))

### Linux, Ubuntu (TeX Live)
- установить texlive-full: `sudo apt-get install texlive-full`
- установить модифицированный [scalable-cyrfonts-tex (ссылка на скачивание)](https://yadi.sk/d/GW2PhDgEcJH7m): `sudo dpkg -i scalable-cyrfonts-tex-shurph_4.16_all.deb`
- можно приступать к сборке проекта

### Windows (MiKTeX)
- см. выше список рекомендаций
- раскомментировать строку `\input{fonts_windows}` в файле `preamble.tex` (и закомментировать строку `\input{fonts_linux}`)