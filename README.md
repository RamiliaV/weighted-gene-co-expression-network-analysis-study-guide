# АНАЛИЗ ВЗВЕШЕННЫХ СЕТЕЙ КО-ЭКСПРЕССИИ ГЕНОВ, Р.А. ВЛАСЕНКОВА

В учебно-методическом пособии систематизированы методы построения взвешенных сетей ко-экспрессии генов, анализа сетей, а также их визуализации с использованием свободной программной среды вычислений R и графической оболочки Posit. В пособие включены базы данных, содержащие данные об экспрессии генов, методы определения корреляции экспрессии генов, построение взвешенных сетей ко-экспрессии, анализ центральности и нахождение модулей сетей, а также сравнения сетей на основе метода иерархической кластеризации и нахождения коэффициента кофенетической корреляции. 
Каждый раздел пособия снабжён примерами реализации методов на языке R, а также заданиями с комментариями и для самостоятельного решения. 
Пособие предназначено для использования в курсе магистратуры «Системная биология», а также для студентов и аспирантов медико-биологического профиля, имеющий опыт в программировании на языке R, при подготовке курсовых и выпускных квалификационных работ и проведении научных исследований.

## Задание 1 
Найти и скачать набор данных в базе данных Gene Expression Omnibus для построения взвешенных сетей ко-экспрессии молекулярно-генетических маркеров болезни Паркинсона.
В конечном результате с помощью данного пособия вы сможете построить, проанализировать и сравнить взвешенные сети ко-экспрессии молекулярно-генетических маркеров болезни Паркинсона на основе данного набора.

## Задание 2
Обработать скачанные таблицы, выбрать необходимые гены молекулярно-генетических маркеров болезни Паркинсона и получить коэффициенты корреляции экспрессии данных генов в образцах здоровых людей и пациентов − theme_2_script.R.
В итоге получим коэффициенты корреляции уровней экспрессии 15 молекулярно-генетических маркеров болезни Паркинсона в образцах здоровых людей и в образцах пациентов. Далее на основе этих данных построим сети ко-экспрессии.

## Задание 3 
Построить и визуализировать сети ко-экспрессии молекулярно-генетических маркеров болезни Паркинсона по данным образцов здоровых людей и пациентов − theme_3_script.R.
В итоге мы построим и визуализируем сети ко-экспрессии молекулярно-генетических маркеров болезни Паркинсона по данным образцов здоровых людей и пациентов. Далее проведем анализ построенных сетей и определим ключевые гены и модули генов в сетях.

## Задание 4
Определить ключевые гены по параметрам промежуточности и концентрирования в сетях ко-экспрессии молекулярно-генетических маркеров болезни Паркинсона по данным образцов здоровых людей и пациентов, а также определите ключевые модули в данных сетях − theme_4_script.R.
В итоге мы проанализируем сети ко-экспрессии по данным образцов здоровых людей и пациентов, и визуализируем их с учетом полученных параметров. Давайте подведем итог. Ключевые гены будем отбирать по следующим порогам: параметр концентрирования − 0.75, параметр промежуточности – 6, а также выберем самый крупный модуль генов.

## Задание 5
Сравнить взвешенные сети ко-экспрессии молекулярно-генетических маркеров болезни Паркинсона по данным образцов здоровых людей и пациентов − theme_5_script.R.
В итоге мы сравним и визуализируем дендрограммы сетей ко-экспрессии по данным образцов здоровых людей и пациентов.
