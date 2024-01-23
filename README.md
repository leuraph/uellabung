# Uellabung
This repository serves as a templated repo 
for any collection of exercise sheets.
An example is included.
Using this repo:
- Any exercise and its solution can
  be stored in the same file.
- Exercise sheets are constructed by inputting
  the exercise files.
- Compilation of exercise sheets with or without 
  solutions is simply specified by setting a flag
  inside the sheet's source file.
- Course specific information such as the name
  of the teacher or the name of the course is 
  specified by using pre-defined commands 
  (see the example sheet).

<img alt="" src="sheet_01.jpeg">

<img alt="" src="sheet_01_solutions.jpeg">

## Exercises
The exercises and their solutions should be found under `exercises/`.
The solution of each exercise should be included in the same file.
An example can be found in the `exercises/` folder.

## Exercise Sheets
Exercise sheet files should be found under `sheets/`
or any subdirectory thereof, e.g. a subdirecctory specifying
the corresponding semester.
An example can be found in the `sheets/hs20` folder.

## Compilation

### By Hand
To compile a file with or without solutions, you can set the
corresponding value in `withsolutions{<bool>}` either to
`true` or `false` by hand and then compile the file.

### Automated

Alternatively, you can use the compilation scripts to compile
sheets automatically with and without solutions.

#### Individual Sheets
To compile individual sheets, run the `compile.sh` script 
on the sheet at hand.
This automatically outputs two separate files, i.e.
one with solutions and one without.
For example, to compile the first exercise sheet of HS20,
you do
```sh
./compile.sh sheets/hs20/sheet_01.tex
```

#### Collection of Sheets
If you want to compile a whole directory, e.g. the sheets for
a complete semester, you can run the `compile_all_in.sh` script
on the corresponding directory.
For example, to compile all files of the HS20 semester, you do
```sh
./compile_all_in.sh sheets/hs20
```