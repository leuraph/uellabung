SHEET_TO_COMPILE=$1
SHEET_NAME=$(basename "${SHEET_TO_COMPILE}" .tex)

sed -i -e '/\withsolutions{true}/ s/^/% /' ${SHEET_TO_COMPILE}
rm ${SHEET_TO_COMPILE}-e

# Compiling without solutions
JOBNAME="${SHEET_NAME}"
latexmk -f -silent -lualatex -jobname="${JOBNAME}" -usepretex="\def\nosolutionsheet{}" ${SHEET_TO_COMPILE}
latexmk -c -silent -jobname="${JOBNAME}" ${SHEET_TO_COMPILE}

# Compiling with solutions
JOBNAME="${SHEET_NAME}_solutions"
latexmk -f -silent -lualatex -jobname=${JOBNAME} -usepretex="\def\solutionsheet{}" ${SHEET_TO_COMPILE}
latexmk -c -silent -jobname=${JOBNAME} ${SHEET_TO_COMPILE}

sed -i -e 's/% \\withsolutions{true}/\\withsolutions{true}/' ${SHEET_TO_COMPILE}
rm ${SHEET_TO_COMPILE}-e