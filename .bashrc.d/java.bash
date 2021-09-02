has jenv && eval "$(jenv init -)"

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="$HOMEBREW_PREFIX/opt/openjdk/bin:$PATH"

#export JAVA_HOME=`/usr/libexec/java_home`

# Maven options (useful for mvn camel:run).
export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=512m"
