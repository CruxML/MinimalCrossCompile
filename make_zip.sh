#! /bin/bash

bazel build :test --build_python_zip
# Actually want to copy to arm system.
mv bazel-bin/test.zip .
# Run on arm sytem.
python3 test.zip
