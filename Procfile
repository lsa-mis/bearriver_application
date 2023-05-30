if [ "$RACK_ENV" == "development" ]; then
  export NODE_OPTIONS=--openssl-legacy-provider
fi
 
web: rails server -p 3000
webpack: bin/webpack-dev-server
