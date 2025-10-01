# コンパイル
zsh compile.sh

# jarファイル生成
cat > manifest.txt <<EOF
Manifest-Version: 1.0
Main-Class: Main

EOF

jar cfm app.jar manifest.txt -C target .
rm manifest.txt

# set -e  # エラーが出たら停止

# # target フォルダを作り直す
# rm -rf target
# mkdir -p target/classes
# mkdir -p target/fatjar

# # 1. コンパイル
# # lib 内の全 jar をクラスパスに追加
# CP=$(echo lib/*.jar | tr ' ' ':')
# javac -cp "$CP" -d target/classes src/**/*.java

# # 2. クラスファイルを fatjar にコピー
# cp -r target/classes/* target/fatjar/

# # 3. lib 内の jar を展開して fatjar に追加
# for jarfile in lib/*.jar; do
#     (cd target/fatjar && jar -xf "../../$jarfile")
# done

# # 4. fat JAR 作成
# jar -cfm target/myapp-fat.jar MANIFEST.MF -C target/fatjar .

# echo "Fat JAR 作成完了: target/myapp-fat.jar"