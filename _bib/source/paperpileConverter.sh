#!/bin/bash

###
# convert exported Paperpile JSON files
# for the SCRiM websites
###

fl_list=()
bibfile="bibtex.bib"
jsonfile="paperpile.json"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BIB_DIR=${DIR/source}
SITE_DIR=${BIB_DIR/_bib\/}

[ -d "${BIB_DIR}downloads/" ] && { rm "${BIB_DIR}downloads/"* 2>/dev/null; } || { mkdir "${BIB_DIR}downloads/" 2>/dev/null; }
[ -d "${BIB_DIR}bib_files/" ] && { rm "${BIB_DIR}bib_files/"* 2>/dev/null; } || { mkdir "${BIB_DIR}bib_files/" 2>/dev/null; }
[ -d "${SITE_DIR}_bib-items/" ] && { rm "${SITE_DIR}_bib-items/"* 2>/dev/null; } || { mkdir "${SITE_DIR}_bib-items/" 2>/dev/null; }

python "${DIR}/make.py"

mv "${BIB_DIR}pches_publications/"* "${SITE_DIR}_bib-items/"
rm -rf "$BIB_DIR}pches_publications/"

# create the download files
# Remove unwanted "original_id" field
cp ${DIR}/bibtex.bib ${DIR}/cp_bibtex.bib
sed -i.bak '/original_id/d' ${DIR}/cp_bibtex.bib

while read LINE; do
  if [[ "$LINE" == "%"* ]]; then
    continue
  fi
  if [[ "$LINE" == "" ]]; then
    continue
  fi
  if [[ "$LINE" =~ '@'[A-za-z]*'{'(.*)',' ]]; then
    KEY=${BASH_REMATCH[1]}
    fl_list+=($KEY)
  fi
  echo "$LINE" >> "${BIB_DIR}downloads/$KEY.bib"
done <${DIR}/bibtex.bib

for fl in ${fl_list[@]}; do
  ${DIR}bib2xml "${BIB_DIR}downloads/$fl.bib" > "${BIB_DIR}downloads/$fl.xml" 2>/dev/null
  ${DIR}xml2end "${BIB_DIR}downloads/$fl.xml" > "${BIB_DIR}downloads/$fl.enl" 2>/dev/null
  ${DIR}xml2ris "${BIB_DIR}downloads/$fl.xml" > "${BIB_DIR}downloads/$fl.ris" 2>/dev/null
done

mv "${DIR}/cp_bibtex.bib" "${BIB_DIR}bib_files/pches_publications.bib" 2>/dev/null

rm "$DIR/"*.pyc