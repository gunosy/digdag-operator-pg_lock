FROM eclipse-temurin:8-jdk

# ビルドに必要な最小限のパッケージをインストール（gradlewの実行に必要）
RUN apt-get update && apt-get install -y findutils && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Gradle Wrapper と設定ファイルをコピーしてキャッシュを有効化
COPY gradlew .
COPY gradle gradle
COPY build.gradle .
COPY settings.gradle .

# gradlew に実行権限を付与
RUN chmod +x gradlew

# 依存関係をあらかじめダウンロード（ソースコード変更の影響を受けないレイヤーにする）
RUN ./gradlew dependencies --no-daemon

# ソースコードをコピー
COPY src src

# デフォルトで shadowJar（プラグイン用JAR）を作成し、ホスト側に作成されるようにする
# マウントした build ディレクトリに出力されるよう調整
CMD ["./gradlew", "shadowJar", "--no-daemon"]
