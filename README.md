# Exercise Collection for Partial Differential Equations
This repository serves as a collection of exercises
and solutions for the course **Partial Differential Equations**
at the University of Bern.

## Exercises
The exercises and their solutions can be found under `/exercises`.
The naming of the exercises indicates the corresponding chapter in
the accompanying lecture notes.
The solutions of each exercise is included the same file.
An example can be found in the `/exercises` folder.

## Exercise Sheets
The intention is that exercise sheets of a specific semester can be put
in the `/sheets/<semester>/` folder.
An example can be found in the `/sheets/hs99` folder.

## Compilation

### By Hand
To compile a file with or without solutions, you can set the
corresponding value in `withsolutions{<bool>}` either to
`true` or `false`.

### Automated
Alternatively, you can run the `compile.sh` script 
on the sheet at hand.
This automatically outputs two separate files, i.e.
one with solutions and one without.
For example, to compile the first exercise sheet of HS23,
you do
```sh
./compile.sh sheets/hs23/sheet_01.tex
```

If you want to compile a whole directory, e.g. the sheets for
a complete semester, you can run the `compile_all_in.sh` script
on the corresponding directory.
For example, to compile all files of the HS23 semester, you do
```sh
./compile_all_in.sh sheets/hs23/
```