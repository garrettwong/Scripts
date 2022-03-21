#!/bin/sh

## usage: ./read_many_args.sh
## description: reads many arguments
## works on: macOS Monterey
## fails on:

display_usage() {
    cat << EOF
Usage: ./read_many_args.sh [option...] <set of tests>
--default Runs all tests.  This flag is optional.
--include-tests path_to_test1 path_to_test2 path_to_testN  Runs only the included tests
--exclude-tests path_to_test1 path_to_test2 path_to_testN  Runs all tests except the specified tests
EOF
}

print_num_tests () {
    # usage: print the number of tests
    echo $(wc -w <<< $@) tests recognized
}

print_list () {
    # usage: print list of arr elements
    for element in "$@"
    do
        echo "$element"
    done
}

get_test_files_recursive () {
    # usage: get_test_files_recursive path_to_tests tests
    # sets the value of the parameter passed to the list of tests by recursively finding all tests in the passed-in directory
    TESTS="$(find $1 -type f)"
    eval "$2='$TESTS'"
}

run_tests () {
    # usage: run_tests test1 test2 test3 testN
    # runs the list of tests passed in as an argument
    echo "Running these tests: "

    tests_to_run=$1

    print_num_tests $tests_to_run

    print_list $tests_to_run
    
    sh ./print_command_line_args.sh $tests_to_run
}

run_tests_with_array () {
    # usage: run_tests_with_array takes in an 

    # arrays require expansion
    array=(abc def ghi)
    echo "${array[@]}" "A"
    print_num_tests "${array[@]}"
    print_list "${array[@]}"
}

run_include_tests () {
    # usage: run_include_tests $@
    # runs only the specified tests
    echo "Running only these tests:"
                
    # remove the --include-tests command line option
    shift

    # $@ is the list of tests that should be included
    tests=$@
    
    run_tests "${tests[@]}"
}

run_exclude_tests () {
    # usage: run_exclude_tests $@
    # runs all tests except the specified tests
    echo "Running all tests except:"
                
    # remove the --exclude-tests command line option
    shift

    # get all tests
    tests=''
    get_test_files_recursive "tests" tests

    # remove matching tests from tests
    tests="${tests/$@/}"
    for var in "$@"
    do
        tests="${tests/$var/}"
    done

    # "${tests[@]}" is the list of filtered tests
    run_tests "${tests[@]}"
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
        tests=''
        get_test_files_recursive "tests" tests
        run_tests "${tests[@]}"
fi
