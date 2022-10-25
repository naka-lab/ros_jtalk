# 他のディレクトリから実行されたときに問題ないように
# このディレクトリに cd する
# 最後にはこのディレクトリに戻ってくる
cwd=`pwd`
this_dir=`dirname ${0}`
cd $this_dir
echo $1 > speech.txt

#VOICE=/usr/share/hts-voice/nitech-jp-atr503-m001
VOICE=mei_happy
./open_jtalk \
-td ${VOICE}/tree-dur.inf \
-tf ${VOICE}/tree-lf0.inf \
-tm ${VOICE}/tree-mgc.inf \
-md ${VOICE}/dur.pdf \
-mf ${VOICE}/lf0.pdf \
-mm ${VOICE}/mgc.pdf \
-df ${VOICE}/lf0.win1 \
-df ${VOICE}/lf0.win2 \
-df ${VOICE}/lf0.win3 \
-dm ${VOICE}/mgc.win1 \
-dm ${VOICE}/mgc.win2 \
-dm ${VOICE}/mgc.win3 \
-ef ${VOICE}/tree-gv-lf0.inf \
-em ${VOICE}/tree-gv-mgc.inf \
-cf ${VOICE}/gv-lf0.pdf \
-cm ${VOICE}/gv-mgc.pdf \
-k  ${VOICE}/gv-switch.inf \
-x naist-jdic \
-s 48000 \
-p 240 \
-a 0.53 \
-u 0.3 \
-jm 0.8 \
-jf 0.4 \
-l \
-z 48000 \
-ow _hoge.wav \
-ot _log.txt \
speech.txt

aplay --quiet _hoge.wav

# 元のディレクトリに戻る
cd $cwd
