MODEL="models/gemini-2.5-flash"
GOOGLE_API_KEY="AIzaSyCCgI35bjYp6KIlYDO5kNcQl1psN0zyp>
# cek API key
if [ -z "$GOOGLE_API_KEY" ]; then
    echo "Error: API Key not found!"
    exit 1
fi

echo "--- Naufal Asist Gemini ---"

while true; do
    echo -ne "\nUser: "
    read prompt

    if [[ "$prompt" == "exit" ]]; then
        break
    fi

    response=$(curl -s -X POST \
        "https://generativelanguage.googleapis.com/v1>
        -H "Content-Type: application/json" \
        -d "{
            \"contents\": [{
                \"parts\": [{
                    \"text\": \"${prompt}\"
                }]
            }]
        }")

    result=$(echo "$response" | jq -r '.candidates[0]>

    if [ "$result" == "null" ] || [ -z "$result" ]; t>
        echo -e "\nGemini Error:\n$response"
    else
        echo -e "\nNaufal asist: $result"
    fi
done
