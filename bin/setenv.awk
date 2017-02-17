BEGIN{
    FS=" *= *"
}

/^\$?LOCAL_/ || /^\$?GOOGLE_/ {

    match( $1, /LOCAL_.*|GOOGLE_.*/ )
    print "export " substr($1,RSTART) "=" $2  ";"
}