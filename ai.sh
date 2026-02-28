        naufal_project/ai/chat.sh
MODEL="models/gemini-2.5-flash"

if [ -z "$GOOGLE_API_KEY" ]; then
    echo "Error: API Key not found!"
    exit 1
fi

echo "---Naufal Asist Gemini---"

while true; do
    echo -ne "\nUsher: "
    read prompt
    if [[ "$prompt" == "exit" ]]; then break; fi

    response=$(curl -s -X POST "https://generativ>
        -H 'Content-Type: application/json' \
        -d "{
          \"contents\": [{
            \"parts\":[{\"text\": \"${prompt}\"}]
          }]
        }")

    result=$(echo "$response" | jq -r '.candidate>

    if [ "$result" == "null" ] || [ -z "$result" >
        echo -e "\nGemini Error: $response"
    else
        echo -e "\nNaufal asist: $result"
    fi
done







