#! /bin/bash -x
# Bash wrapper script for simplifying curl calls to the Canvas API
# Authenticates via bearer tokens

# User tokens by role SiteAdmin Admin Teacher Student
SA=
A=
T=
S=

# Request URL
DOMAIN=

# Request Method [accepts: GET, POST, PUT, DELETE]
METHOD=

# Arguments to be passed in the request
ARG1=
ARG2=
ARG3=
ARG4=
ARG5=
ARG6=
ARG7=

echo "Choose one of the following user token roles:"
echo
echo "[SA]dmin"
echo "[A]dmin"
echo "[T]eacher"
echo "[S]tudent"
echo

read input

case "$input" in
  "SA" | "sa" )
  echo `curl -k -v -X $METHOD -H "Authorization: Bearer $SA" $DOMAIN --data-urlencode \
        $ARG1 --data-urlencode $ARG2 --data-urlencode $ARG3 --data-urlencode $ARG4 \
        --data-urlencode $ARG5 --data-urlencode $ARG6` | python -mjson.tool
  ;;
  "A" | "a" )
  echo `curl -k -v -X $METHOD -H "Authorization: Bearer $A" $DOMAIN --data-urlencode \
        $ARG1 --data-urlencode $ARG2 --data-urlencode $ARG3 --data-urlencode $ARG4 \
        --data-urlencode $ARG5 --data-urlencode $ARG6` | python -mjson.tool
  ;;
  "T" | "t" )
  echo `curl -k -v -X $METHOD -H "Authorization: Bearer $T" $DOMAIN --data-urlencode \
        $ARG1 --data-urlencode $ARG2 --data-urlencode $ARG3 --data-urlencode $ARG4 \
        --data-urlencode $ARG5 --data-urlencode $ARG6` | python -mjson.tool
  ;;
  "S" | "s" )
  echo `curl -k -v -X $METHOD -H "Authorization: Bearer $S" $DOMAIN --data-urlencode \
        $ARG1 --data-urlencode $ARG2 --data-urlencode $ARG3 --data-urlencode $ARG4 \
        --data-urlencode $ARG5 --data-urlencode $ARG6` | python -mjson.tool
  ;;
esac
exit 0
