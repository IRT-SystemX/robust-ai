# Copy dependencies
cd ..
cp -R _static docs/source/
cp -R examples docs/source/

# Delete old robustAI modules

rm -f docs/source/robustAI*.rst

# Generate package docstring

sphinx-apidoc -o docs/source robustAI

# Generate HTML

cd docs
./make.bat clean
./make.bat html

# Clean temp directories
rm -Rf source/_static
rm -Rf source/examples
