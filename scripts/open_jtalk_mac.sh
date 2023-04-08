# インストール
# brew install open-jtalk

# 他のディレクトリから実行されたときに問題ないように
# このディレクトリに cd する
# 最後にはこのディレクトリに戻ってくる
cwd=`pwd`
this_dir=`dirname ${0}`
cd $this_dir
echo $1 > speech.txt

open_jtalk \
-m mei_happy.htsvoice \
-x naist-jdic \
-s 48000 \
-p 240 \
-a 0.53 \
-u 0.3 \
-jm 0.8 \
-jf 0.4 \
-z 48000 \
-ow _hoge.wav \
-ot _log.txt \
speech.txt

afplay _hoge.wav

# 元のディレクトリに戻る
cd $cwd
