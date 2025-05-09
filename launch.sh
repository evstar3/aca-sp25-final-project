#!/bin/sh

# Globals
#
GEM5_EXE="gem5/build/X86/gem5.opt"
CONFIG="gem5/configs/decay_cache/single_rate.py"
RATES="1024 8192 65536 524288"

if [ ! -x "$GEM5_EXE" ]; then
    echo "Missing $GEM5_EXE" 1>&2
    exit 1
fi

# Arguments

BINARY=
INFILE="/dev/null"
OUTDIR=
CONFIG=

# Functions

usage() {
cat <<EOF
./launch.sh [-h] -b BINARY -c CONFIG -o OUTDIR [-i INFILE]

-h,--help               Show this message and exit
-b,--binary BINARY      The executable to simulate 
-c,--config CONFIG      The gem5 config to use
-o,--outdir OUTDIR      The output directory name
-i,--infile INFILE      The file to redirect to the simulator
                        stdin. Default: /dev/null
EOF
}

PARSED_ARGUMENTS=$(getopt -o hb:i:o:c: --l help,binary:,infile:,outdir:,config: -- "$@")
eval set -- "$PARSED_ARGUMENTS"

while true; do
    case $1 in
        -b|--binary)
            BINARY="$2"
            shift
            ;;
        -i|--infile)
            INFILE="$2"
            shift
            ;;
        -o|--outdir)
            OUTDIR="$2"
            shift
            ;;
        -c|--config)
            CONFIG="$2"
            shift
            ;;
        -h|--help)
            usage
            exit 0
            ;;
        --)
            break
            ;;
    esac
    shift
done

shift

if [ ! -z "$@" ]; then
    echo "Unexpected positional arguments" 1>&2
    exit 1
fi

if [ -z "$BINARY" ]; then
    echo "Expected BINARY" 1>&2
    exit 1
fi

if [ -z "$OUTDIR" ]; then
    echo "Expected OUTDIR" 1>&2
    exit 1
fi

if [ -z "$CONFIG" ]; then
    echo "Expected CONFIG" 1>&2
    exit 1
fi

for RATE in $RATES; do
    QTR_RATE=$(echo $RATE / 4 | bc)
    
    "$GEM5_EXE" < "$INFILE" \
        --outdir="${OUTDIR}/${RATE}" \
        --redirect-stdout \
        --redirect-stderr \
        "$CONFIG" \
        -r "$QTR_RATE" \
        "$BINARY" &
done

wait
