#!/bin/bash

display_usage() {
    cat << EOF
Usage: ./read_many_args.sh [option...] <set of tests>
--default Runs all tests.  This flag is optional.
--include-tests path_to_test1 path_to_test2 path_to_testN  Runs only the included tests
--exclude-tests path_to_test1 path_to_test2 path_to_testN  Runs all tests except the specified tests
EOF
}

print_string () {
    echo $1
}

run_tests () {
    # usage: run_tests test1 test2 test3 testN
    # runs the list of tests passed in as an argument
    echo "actually running these: "
    echo $# tests recognized
    echo $@
}

run_include_tests () {
    # usage: run_include_tests $@
    # runs only the specified tests
    echo "Running only these tests:"
                
    # remove the --include-tests command line option
    shift

    # $@ is the remaining list of tests that should be included
    run_tests $@
}

run_exclude_tests () {
    # usage: run_exclude_tests $@
    # runs all tests except the specified tests
    echo "Running all tests except:"
                
    # remove the --exclude-tests command line option
    shift

    # $@ is the remaining list of tests that should be included
    run_tests $@
}

# process command line arguments
if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
  display_usage
  exit 0
fi

if [[ $# -gt 0 ]]
    then
        key="$1"

        if [ "$key" == "--include-tests" ];
            then
                run_include_tests $@

        elif [  "$key" == "--exclude-tests" ];
            then
                run_exclude_tests $@
        else
            echo "Invalid flag specified: $1.  Use -h or --help for usage options."
            exit 0
        fi

    else
        echo "Running all"
        run_tests test1
fi
