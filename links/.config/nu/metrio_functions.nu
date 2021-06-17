def karb [] {
  killall -s SIGKILL ruby
  pkill -9 -f gulp
  killall node
}

# ---------------------------------------------------------------------
# WTF even is frontend?
# ---------------------------------------------------------------------
def frontend_is_always_problems [] {
  echo "Solving classic frontend problems"
  cd ..
  cd frontend/metrio3
  rm -rf dist tmp node_modules
  yarn cache clean
  yarn install
  cd ../..
  cd frontend/metrio4
  rm -rf dist node_modules
  yarn cache clean
  yarn install
  cd ../..
  cd frontend/server
  rm -rf dist node_modules
  yarn cache clean
  yarn install
  cd ../..
  echo "Yo. Next time just rm -rf the frontend folder"
}
