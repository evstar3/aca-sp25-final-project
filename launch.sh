#!/bin/sh

# Globals
#
GEM5_EXE="gem5/build/X86/gem5.opt"
BASE_CONFIG="gem5/configs/decay_cache/base.py"
DECAY_CONFIG="gem5/configs/decay_cache/single_rate.py"
RATES="1024 8192 65536 524288"

if [ ! -x "$GEM5_EXE" ]; then
    echo "Missing $GEM5_EXE" 1>&2
    exit 1
fi

# Arguments

CMD=
INFILE="/dev/null"
OUTDIR=

# Functions

usage() {
cat <<EOF
./launch.sh [-h] -c COMMAND -o OUTDIR [-i INFILE]

-h,--help               Show this message and exit
-c,--cmd COMMAND        The executable to simulate 
-o,--outdir OUTDIR      The output directory name
-i,--infile INFILE      The file to redirect to the simulator
                        stdin. Default: /dev/null
EOF
}

PARSED_ARGUMENTS=$(getopt -o hc:i:o: --l help,cmd:,infile:,outdir: -- "$@")
eval set -- "$PARSED_ARGUMENTS"

while true; do
    case $1 in
        -c|--cmd)
            COMMAND="$2"
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
    usage
    exit 1
fi

if [ -z "$COMMAND" ]; then
    echo "Expected COMMAND" 1>&2
    usage
    exit 1
fi

if [ -z "$OUTDIR" ]; then
    echo "Expected OUTDIR" 1>&2
    usage
    exit 1
fi

"$GEM5_EXE" < "$INFILE" \
    --outdir="${OUTDIR}/base" \
    --redirect-stdout \
    --redirect-stderr \
    "$BASE_CONFIG" \
    $COMMAND &

for RATE in $RATES; do
    QTR_RATE=$(echo $RATE / 4 | bc)
    
    "$GEM5_EXE" < "$INFILE" \
        --outdir="${OUTDIR}/${RATE}" \
        --redirect-stdout \
        --redirect-stderr \
        "$DECAY_CONFIG" \
        -r "$QTR_RATE" \
        $COMMAND &
done

wait
