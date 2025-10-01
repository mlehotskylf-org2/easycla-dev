#!/usr/bin/env bash
set -euo pipefail
names=(
  "lukaszgryglicki"
  "lgryglicki"
  "Lukasz Gryglicki"
  "justynagryglicka"
  "Justyna Gryglicka"
  "LukaszG"
  "L Gryglicki"
  "Unknown User"
)
emails=(
  "lgryglicki@cncf.io"
  "lgryglicki@contractor.linuxfoundation.org"
  "lukaszgryglicki1982@gmail.com"
  "justacakala@o2.pl"
  "jgryglicka@cncf.io"
  "lukaszgryglicki@users.noreply.github.com"
  "2469783+lukaszgryglicki@users.noreply.github.com"
  "non-existing-email@domain.com.pl"
)
make_commit() {
  local n=
  local a_index=-1
  local pattern=0
  local msg_file=.msg_tmp
  : > ""
  echo "Mass commit " >> ""
  coauthors=()
  case  in
    0) ;; # author only
    1) coauthors+=( 1 ) ;;
    2) coauthors+=( 1 2 ) ;;
    3) coauthors+=( 7 ) ;;
    4) coauthors+=( 7 1 ) ;;
    5) coauthors+=( 3 5 ) ;;
    6) for i in {0..7}; do [  -ne  ] && coauthors+=(  ); done ;;
    7) coauthors+=(   ) ;;
    8) coauthors+=( 7 0 1 2 3 4 5 6 ) ;;
    9) coauthors+=( 2 4 6 ) ;;
    10) coauthors+=( 0 2 4 6 ) ;;
    11) coauthors+=( 1 3 5 7 ) ;;
    12) coauthors+=( 7 7 ) ;;
    13) coauthors+=( 1 1 7 ) ;;
  esac
  if [ 0 -gt 0 ]; then
    echo >> ""
    for c in ""; do
      echo "Co-authored-by:  <>" >> ""
    done
    echo >> ""
  fi
  echo "change " >> README.md
  git add README.md
  GIT_AUTHOR_NAME="" GIT_AUTHOR_EMAIL=""   GIT_COMMITTER_NAME="" GIT_COMMITTER_EMAIL=""   git commit -F "" --quiet
}
for i in 1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
101
102
103
104
105
106
107
108
109
110; do
  make_commit 
  if ! (( i % 25 )); then echo "Created  commits..."; fi
done
rm -f .msg_tmp
