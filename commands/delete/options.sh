# Generated by stubbs:add-option. Do not edit, if using stubbs.
# Created: Tue Dec 15 13:56:59 PST 2015
#
#/ usage: rundeck-acls:delete  --aclpolicy <>  --url <$RUNDECK_URL> [ --username <$RUNDECK_USER>] [ --password <$RUNDECK_PASSWORD>] [ --apikey <$RUNDECK_APIKEY>] 

# _rerun_options_parse_ - Parse the command arguments and set option variables.
#
#     rerun_options_parse "$@"
#
# Arguments:
#
# * the command options and their arguments
#
# Notes:
# 
# * Sets shell variables for any parsed options.
# * The "-?" help argument prints command usage and will exit 2.
# * Return 0 for successful option parse.
#
rerun_options_parse() {

    while [ "$#" -gt 0 ]; do
        OPT="$1"
        case "$OPT" in
            --aclpolicy) rerun_option_check $# $1; ACLPOLICY=$2 ; shift ;;
            --url) rerun_option_check $# $1; URL=$2 ; shift ;;
            --username) rerun_option_check $# $1; USERNAME=$2 ; shift ;;
            --password) rerun_option_check $# $1; PASSWORD=$2 ; shift ;;
            --apikey) rerun_option_check $# $1; APIKEY=$2 ; shift ;;
            # help option
            -|--*?)
                rerun_option_usage
                exit 2
                ;;
            # end of options, just arguments left
            *)
              break
        esac
        shift
    done

    # Set defaultable options.
    [ -z "$URL" ] && URL="$(rerun_property_get $RERUN_MODULE_DIR/options/url DEFAULT)"
    [ -z "$USERNAME" ] && USERNAME="$(rerun_property_get $RERUN_MODULE_DIR/options/username DEFAULT)"
    # Check required options are set
    [ -z "$ACLPOLICY" ] && { echo >&2 "missing required option: --aclpolicy" ; return 2 ; }
    [ -z "$URL" ] && { echo >&2 "missing required option: --url" ; return 2 ; }
    # If option variables are declared exportable, export them.
    export USERNAME
    export PASSWORD
    export APIKEY
    #
    return 0
}


# If not already set, initialize the options variables to null.
: ${ACLPOLICY:=}
: ${URL:=}
: ${USERNAME:=}
: ${PASSWORD:=}
: ${APIKEY:=}

