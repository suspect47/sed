# обрезать последнюю часть пути по разделителю
echo "repo/smart/speech/speechlab/speechlab:9.3.0.41316" | rev | sed -r 's/^[^/]+//' | rev
