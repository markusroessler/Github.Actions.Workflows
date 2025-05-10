FROM mcr.microsoft.com/dotnet/sdk:9.0

RUN dotnet workload install maui-android

RUN apt update \
    && apt -yq install android-sdk

# note: commandline tools from https://developer.android.com/studio#command-tools
RUN cd /usr/lib/android-sdk \
    && wget https://dl.google.com/android/repository/commandlinetools-linux-13114758_latest.zip \ 
    && unzip commandlinetools-linux-13114758_latest.zip -d temp \
    && mkdir -p cmdline-tools/latest \
    && mv temp/cmdline-tools/* cmdline-tools/latest/ \
    && cd cmdline-tools/latest/bin \
    && yes | ./sdkmanager --licenses \
    && ./sdkmanager "platform-tools" "platforms;android-35" "build-tools;35.0.0"